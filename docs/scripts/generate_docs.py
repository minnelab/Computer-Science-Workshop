import os


def find_readmes(directory):
    readmes = []
    for root, _, files in os.walk(directory):
        for file in files:
            if file.endswith(".md"):
                readmes.append(os.path.relpath(os.path.join(root, file), directory))
    return readmes


def generate_rst(readmes, output_file):
    grouped_readmes = {}
    for readme in readmes:
        subfolder = os.path.dirname(readme)
        if subfolder not in grouped_readmes:
            grouped_readmes[subfolder] = []
        grouped_readmes[subfolder].append(readme)

    # Group by first subfolder (e.g., Day1, Day2)
    from collections import defaultdict

    # Build a new grouping: {Day1: {subfolder: [readmes]}, Day2: ...}
    day_grouped = defaultdict(lambda: defaultdict(list))
    for subfolder, readmes_list in grouped_readmes.items():
        if subfolder:
            parts = subfolder.split(os.sep)
            if len(parts) > 0:
                day = parts[0]
                rest = os.sep.join(parts[1:]) if len(parts) > 1 else ""
                day_grouped[day][subfolder] = readmes_list
        else:
            day_grouped["Other"][""].extend(readmes_list)

    with open(output_file, 'w') as f:
        f.write("Sessions\n")
        f.write("=========\n\n")
        for day in sorted(day_grouped.keys()):
            f.write(f"{day}\n")
            f.write(f"{'-' * len(day)}\n\n")
            for subfolder, readmes in day_grouped[day].items():
                # Write subfolder title if it's not the day root
                if subfolder and subfolder != day:
                    last_subfolder = subfolder.split(os.sep)[-1]
                    #f.write(f"{last_subfolder}\n")
                    #f.write(f"{'-' * len(last_subfolder)}\n\n")
                f.write(".. toctree::\n")
                f.write("   :maxdepth: 1\n\n")
                readme_found = False
                for readme in readmes:
                    if "README.md" in readme:
                        f.write(f"   Sessions/{readme}\n")
                        readme_found = True
                        break
                if not readme_found:
                    for readme in readmes:
                        f.write(f"   Sessions/{readme}\n")
                f.write("\n")


if __name__ == "__main__":
    tutorial_dir = os.path.join(os.path.dirname(__file__), '..', 'source', 'apidocs', 'Sessions')
    output_file = os.path.join(os.path.dirname(__file__), '..', 'source', 'apidocs', 'sessions.rst')
    readmes = find_readmes(tutorial_dir)
    generate_rst(readmes, output_file)