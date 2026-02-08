# Linux Fundamentals

My practice repository for learning Linux basics as part of my DevOps journey.

## Contents

This repo contains scripts demonstrating core Linux concepts:

### Scripts

1. **file-operations.sh**
   - File and directory creation
   - Copying and moving files
   - File permissions (chmod)
   - File ownership concepts (chown)
   
2. **user-management.sh**
   - User and group information
   - Understanding permissions (rwx)
   - User management commands overview
   
3. **system-info.sh**
   - System resource monitoring
   - CPU and memory usage
   - Disk space checking
   - Process management

## Usage

Make scripts executable:
```bash
chmod +x scripts/*.sh
```

Run any script:
```bash
./scripts/file-operations.sh
./scripts/user-management.sh
./scripts/system-info.sh
```

## What I Learned

- Linux file system structure and navigation
- File permissions and the rwx model
- User and group management concepts
- Process monitoring and system resource checking
- Basic bash scripting for automation

## Key Commands Practiced
```bash
# File operations
ls, cd, mkdir, cp, mv, rm, chmod, chown

# User management  
whoami, id, groups, useradd, usermod

# System monitoring
ps, top, free, df, uptime

# Networking
ip, hostname
```

## Part of My DevOps Learning Journey

This is Phase 1 (Foundation) of my DevOps roadmap:
- ✅ Linux fundamentals
- 🔄 Git workflow
- 🔄 Networking basics
- 🔄 Bash scripting
- ⏳ Python for automation
- ⏳ Docker & containers
- ⏳ AWS cloud platform

## Notes

All scripts are educational and safe to run. They demonstrate concepts without making permanent system changes (except file-operations.sh which creates/deletes test files in a temporary directory).

---

**Learning in public** | Following a systems-first approach to DevOps