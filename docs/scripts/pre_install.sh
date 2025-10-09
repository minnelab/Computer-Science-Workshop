mkdir -p docs/source/apidocs
cp README.md docs/source/README.md
sed -i 's|\./|apidocs/|g' docs/source/README.md
mkdir -p docs/source/apidocs/Sessions/Day1/MAIA-Intro
mkdir -p docs/source/apidocs/Sessions/Day1/Conda
mkdir -p docs/source/apidocs/Sessions/Day1/Git
mkdir -p docs/source/apidocs/Sessions/Day1/Shell-Intro
mkdir -p docs/source/apidocs/Sessions/Day1/SSH_VSCode
mkdir -p docs/source/apidocs/Sessions/Day2/ML-framworks
mkdir -p docs/source/apidocs/Sessions/Day2/Shell-Part-2
mkdir -p docs/source/apidocs/Sessions/Day2/SLURM-HPC
mkdir -p docs/source/apidocs/Sessions/Day2/FAQ
cp -r Day1/MAIA-Intro/* docs/source/apidocs/Sessions/Day1/MAIA-Intro/
cp -r Day1/Conda/* docs/source/apidocs/Sessions/Day1/Conda/
cp -r Day1/Git/* docs/source/apidocs/Sessions/Day1/Git/
cp -r Day1/Shell-Intro/* docs/source/apidocs/Sessions/Day1/Shell-Intro/
cp -r Day1/SSH_VSCode/* docs/source/apidocs/Sessions/Day1/SSH_VSCode/
cp -r Day2/ML-framworks/* docs/source/apidocs/Sessions/Day2/ML-framworks/
cp -r Day2/Shell-Part-2/* docs/source/apidocs/Sessions/Day2/Shell-Part-2/
cp -r Day2/SLURM-HPC/* docs/source/apidocs/Sessions/Day2/SLURM-HPC/
cp -r Day2/FAQ/* docs/source/apidocs/Sessions/Day2/FAQ/
python docs/scripts/generate_docs.py