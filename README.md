# CIS21031 - Platform Technologies Practical

Repository containing lab sheets and continuous assessments for Platform Technologies course.

## Prerequisites

- Basic understanding of Linux/Unix operating systems
- Command-line interface familiarity
- Text editor (vim, nano, or VS Code)
- Bash shell environment (Linux, macOS, or WSL on Windows)
- File permissions knowledge

## Contents

### Continuous Assessments
- **CA-2024.02.27** - February 2024 Assessment (Q1, Q2)
  - Q1: Shell scripting fundamentals with bash aliases
  - Q2: Advanced scripting and automation tasks
  - Student submission: SEU.IS.20.ICT.084
- **CA-2024.03.16** - March 2024 Assessment
  - Midterm practical examination
- **CA-2024.09.09** - September 2024 Assessment
  - Final semester practical evaluation

### Lab Sheets (1-8)
Hands-on exercises covering shell scripting, bash commands, and system administration tasks.

#### Labsheet 1
- Introduction to Unix/Linux basics
- File system navigation
- Basic commands and utilities

#### Labsheet 2
- File operations and manipulation
- Directory management
- Permissions and ownership

#### Labsheet 3
- Text processing with grep, sed, awk
- Piping and redirection
- Regular expressions

#### Labsheet 4
- Shell variables and environment
- Basic scripting concepts
- Input/output operations

#### Labsheet 5
- Control structures (if, case)
- Conditional statements
- Script logic and flow

#### Labsheet 6
- Loops (for, while, until)
- Array operations
- Advanced scripting techniques

#### Labsheet 7
- **EX01/** - Shell scripting fundamentals (Ex01.sh, Ex02.sh)
- **EX02/** - Advanced scripting exercises (Ex01.sh through Ex05.sh)
- Functions and modular scripting
- Error handling and debugging

#### Labsheet 8
- Shell scripting exercises (EX01.sh - EX05.sh)
- Bash aliases and configuration (EX05..bash_aliases)
- Script variations and implementations (EX03_02.sh, EX04_02.sh)
- Process management and automation
- Final integration exercises

## Running Scripts

### Method 1: Direct execution with bash
```bash
bash script_name.sh
```

### Method 2: With execute permissions
```bash
chmod +x script_name.sh
./script_name.sh
```

### Method 3: With arguments
```bash
bash script_name.sh arg1 arg2 arg3
```

### Loading bash aliases
```bash
source .bash_aliases
# or
. .bash_aliases
```

## Technologies
- Bash Shell Scripting
- Linux/Unix Commands
- Shell Configuration (.bash_aliases)

## Repository Statistics
- **Total Lab Sheets:** 8
- **Continuous Assessments:** 3
- **Primary Language:** Bash/Shell

## Learning Outcomes
- Shell scripting fundamentals and advanced techniques
- Linux command-line operations
- System administration tasks
- Bash customization and aliases
- Script debugging and optimization
- File system operations and permissions

## File Naming Conventions
- `.sh` - Executable shell scripts
- `.bash_aliases` - Bash alias configuration files
- Numbered exercises (Ex01, Ex02, etc.)
- Question-based files (Q1, Q2, etc.)
- Variant files (Ex03_02.sh) - Alternative implementations

## Common Commands Reference

### File Operations
```bash
ls -la          # List all files with details
cp file1 file2  # Copy files
mv file1 file2  # Move/rename files
rm file         # Remove files
mkdir dir       # Create directory
rmdir dir       # Remove empty directory
```

### Text Processing
```bash
grep pattern file    # Search for pattern
sed 's/old/new/' file # Replace text
awk '{print $1}' file # Process columns
cat file             # Display file contents
head -n 10 file      # First 10 lines
tail -n 10 file      # Last 10 lines
```

### Permissions
```bash
chmod 755 file       # rwxr-xr-x
chmod +x file        # Add execute permission
chown user:group file # Change ownership
```

### Process Management
```bash
ps aux              # List all processes
top                 # Real-time process monitor
kill PID            # Terminate process
killall name        # Kill by process name
bg                  # Background job
fg                  # Foreground job
```

## Additional Resources
- Course Code: CIS21031
- Platform: Linux/Unix environments
- Recommended Shell: Bash

## Script Examples

### Basic Script Structure
```bash
#!/bin/bash
# Script description
# Author: SEU.IS.20.ICT.084
# Date: 2024

# Your code here
echo "Hello, Platform Technologies!"
```

### Script with Variables
```bash
#!/bin/bash
NAME="Student"
COURSE="CIS21031"
echo "$NAME is studying $COURSE"
```

### Script with Functions
```bash
#!/bin/bash
function greet() {
    echo "Hello, $1!"
}
greet "World"
```

## Troubleshooting

### Permission Denied Error
```bash
# Problem: bash: ./script.sh: Permission denied
# Solution:
chmod +x script.sh
```

### Bad Interpreter Error
```bash
# Problem: /bin/bash^M: bad interpreter
# Solution (remove Windows line endings):
sed -i 's/\r$//' script.sh
# Or use:
dos2unix script.sh
```

### Command Not Found
```bash
# Problem: command not found
# Solutions:
# 1. Check if file exists
ls -l script.sh
# 2. Use full path
/bin/bash script.sh
# 3. Add to PATH
export PATH=$PATH:$(pwd)
```

### Syntax Errors
```bash
# Check syntax without executing
bash -n script.sh

# Debug mode (verbose output)
bash -x script.sh
```

## Notes
- All scripts are designed for educational purposes
- Test scripts in a safe environment before production use
- Ensure proper file permissions before execution
- Review script contents before running
- Always backup important files before testing scripts
- Use version control (git) to track changes
- Comment your code for better understanding

## Best Practices

1. **Always use shebang**: Start scripts with `#!/bin/bash`
2. **Add comments**: Document what your code does
3. **Error handling**: Use `set -e` to exit on errors
4. **Variable quoting**: Always quote variables: `"$VAR"`
5. **Test incrementally**: Test each section before adding more
6. **Use meaningful names**: Variables and functions should be descriptive
7. **Avoid hardcoding**: Use variables for paths and values
8. **Check exit codes**: Use `$?` to verify command success

## Resources

### Documentation
- [Bash Manual](https://www.gnu.org/software/bash/manual/)
- [Linux Command Reference](https://man7.org/linux/man-pages/)
- [Shell Scripting Tutorial](https://www.shellscript.sh/)

### Tools
- [ShellCheck](https://www.shellcheck.net/) - Shell script analysis
- [Explain Shell](https://explainshell.com/) - Command breakdown
- [Regex101](https://regex101.com/) - Regular expression testing

## Future Enhancements

- [ ] Add unit tests for scripts
- [ ] Create comprehensive documentation for each lab
- [ ] Implement logging mechanisms
- [ ] Add performance benchmarking
- [ ] Create Docker environment for consistent testing
- [ ] Develop automated grading scripts

## Contact & Support

For questions or issues related to this coursework:
- Course: CIS21031 - Platform Technologies
- Institution: [Your Institution Name]
- Instructor: [Instructor Name]

## License

This repository is for educational purposes only. All rights reserved.

## Author
Student ID: SEU.IS.20.ICT.084  
Course: CIS21031 - Platform Technologies  
Academic Year: 2024-2025

---
*Last Updated: January 9, 2026*  
*Repository maintained for coursework compliance*
