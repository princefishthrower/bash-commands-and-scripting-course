# commands covered in this lesson

chmod # change file mode and permissions (can also work recursively when passing the -R flag)

# ex. symbolic - add read and write to group permissions
chmod g+rw file.txt

# allow execute, read, and write for user, readonly for group and others
chmod 744 file.txt

# On mac, list the permissions for file.txt in octal mode
stat -f %A file.txt

# On linux systems:
stat -c '%a' file.txt

# Overview of octal notation for UNIX permissions:
# 0-no permissions
# 1-execute only
# 2-write only
# 3-execute and write only
# 4-read only
# 5-execute and read only
# 6-read and write only
# 7-execute, read, and write

# see https://chmod-calculator.com for a nice interactive UI