#!/bin/bash

# user-management.sh
# Demonstratesuser and group management (informational - requires sudo for actual changes)

echo "=== User and Group Mangement Demo ==="
echo ""

# Display current user
echo "1. Current user information:"
echo "   Username: $(whoami)"
echo "   User ID: $(id -u)"
echo "   Group ID: $(id -g)"
echo "   Groups: $(groups)"
echo ""

# Display all groups current user belongs to
echo "2. Detailed user info:"
id 
echo ""

# Show home directory and shell
echo "3. User environment:"
echo "   Home  directory: $HOME"
echo "   Shell: $SHELL"
echo ""

# List all users on system (from /etc/passwd)
echo "4. Sample of users on this system:"
echo "   (From /etc/passwd - first 5 regular users)"
grep -E '/home' /etc/passwd | head -5 | awk -F: '{print "   - " $1 " (UID: " $3 ")"}'
echo ""

# Explain permission groups
echo "5. Understanding file permissions:"
echo "   Example: -rw-r--r--"
echo "   - First character: file type (- = file, d = directory)"
echo "   - Next 3: owner permissions (  rw- = read, write)"
echo "   - Next 3: group permissions (r-- = read only)"
echo "   - Last 3: others permissions (r-- = read only)"
echo ""

# Show umask
echo "6. Default file creation permissions (umask):"
echo "   Current umask: $(umask)"
echo "   This determines default permissions for new files"
echo ""

# Note about sudo commands
echo "7. Commands that require sudo (root access):"
echo "   - useradd: Create new users"
echo "   - usermod: Modify exisiting users"
echo "   - userdel: Delete users"
echo "   - groupadd: Create new groups"
echo "   - chown: Change file ownership"
echo ""
echo "   Example: sudo useradd -m -s /bin/bash newuser"
echo "   (Creates user 'newuser' with home directory and bash shell)"
echo ""

echo "=== Demo Complete ==="
echo ""
echo "Note: This scripty shows informations only."
echo "To actually create/modify users, you need sudo priviledges."

