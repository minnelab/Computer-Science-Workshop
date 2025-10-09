# Git

## Git Exercise: Contributing to a Repository

In this exercise, you'll learn the basic Git workflow for contributing to a project. Follow these steps:

## Steps

1. Fork the Repository
   - Visit: https://github.com/kthcloud/Computer-Science-Workshop/
   - Click the "Fork" button in the top-right corner

2. Clone Your Fork   
```bash
   git clone https://github.com/YOUR-USERNAME/Computer-Science-Workshop.git
   cd Computer-Science-Workshop   
```

3. Create a New Branch     
```bash
   git checkout -b your-name  
```

4. Create a File with a Unique ID   
```bash
   # Generate a UUID and save it to a file
   curl https://httpbin.org/uuid > your-name.txt
   ```

5. Stage and Commit Your Changes   
```bash
   git add your-name.txt
   git commit -m "Add unique identifier file"   
```

6. Push to Your Fork   
```bash
   git push origin your-name  
```

7. Create a Pull Request
   - Go to the original repository: https://github.com/kthcloud/Computer-Science-Workshop/
   - Click "Pull Requests" → "New Pull Request"
   - Choose your fork and branch
   - Submit the pull request

