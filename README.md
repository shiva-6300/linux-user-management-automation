# Linux User Management Automation

##  Project Overview
This project automates Linux user and group management using a Bash script.  
It helps system administrators create multiple users quickly and efficiently.

---

##  Features
- Bulk user creation from CSV file
- Automatic group creation
- Assign users to groups
- Default password setup
- Logging system for tracking actions
- Prevents duplicate user creation

---

##  Technologies Used
- Linux
- Bash Scripting
- useradd, groupadd, chpasswd
- File handling

---

##  Project Structure
```
linux-user-management-automation/
│
├── user_management.sh
├── users.csv
├── README.md
├── user_management.log
└── screenshots/
```

---

##  How to Run

1. Give permission:
   ```bash
   chmod +x user_management.sh
   ```

2.Run script:

sudo ./user_management.sh
