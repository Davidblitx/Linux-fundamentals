#!/bin/bash

# file-operations.sh
# Demonstrates common file operations in Linux

echo "=== File Operations Demo ==="
echo ""

# Create a test directory
echo "1. Creating test directory..."
mkdir -p test-files
echo "   ✓ Directory 'test-files' created"
echo ""

# Create some test files
echo "2. Creating test files..."
touch test-files/file1.txt test-files/file2.txt test-files/file3.txt
echo "   ✓ Created file1.txt, file2.txt, file3.txt"
echo ""

# List files
echo "3. Listing files..."
ls -lh test-files/
echo ""

# Copy a file
echo "4. Copying file1.txt to file1-backup.txt..."
cp test-files/file1.txt test-files/file1-backup.txt
echo "   ✓ File copied"
echo ""

# Move/rename a file
echo "5. Moving file2.txt to file2-renamed.txt..."
mv test-files/file2.txt test-files/file2-renamed.txt
echo "   ✓ File moved/renamed"
echo ""

# Change file permissions
echo "6. Changing permissions on file3.txt..."
echo "   Before: $(ls -l test-files/file3.txt | awk '{print $1, $9}')"
chmod 644 test-files/file3.txt
echo "   After:  $(ls -l test-files/file3.txt | awk '{print $1, $9}')"
echo "   (644 = owner can read/write, others can only read)"
echo ""

# Change ownership (will require sudo for real users)
echo "7. File ownership demo..."
echo "   Current owner: $(ls -l test-files/file1.txt | awk '{print $3}')"
echo "   Note: chown requires sudo to change to different users"
echo ""

# Clean up
echo "8. Cleaning up test files..."
rm -rf test-files
echo "   ✓ Test directory removed"
echo ""

echo "=== Demo Complete ==="