# oss-audit-24BCE11076
OSS Capstone Project - Python Audit
# OSS Audit — Python
### Student: Swastik Kaurav | Registration Number: 24BCE11076
### Course: Open Source Software | VIT BHOPAL

## Software Chosen: Python

Python is an open-source programming language created by Guido van Rossum in 1991. It is licensed under the PSF License (Python Software Foundation License).

---

## Scripts

| Script | File | What it does |
|---|---|---|
| 1 | script1.sh | Shows system info - kernel, user, uptime, distro |
| 2 | script2.sh | Checks if Python is installed and shows its details |
| 3 | script3.sh | Audits disk usage and permissions of key directories |
| 4 | script4.sh | Analyzes log files and counts error keywords |
| 5 | script5.sh | Generates a personal open source manifesto |

---

## How to Run Scripts on Linux

### Requirements
- A Linux system or WSL (Windows Subsystem for Linux)
- Python3 installed: `sudo apt install python3`
- Bash shell (comes default with Linux)

### Steps
```bash
# Clone the repo
git clone https://github.com/SwastikKaurav/oss-audit-24BCE11076.git
cd oss-audit-24BCE11076

# Run any script
bash script1.sh
bash script2.sh
bash script3.sh

# Script 4 needs a log file
bash script4.sh /var/log/syslog error

# Script 5 is interactive
bash script5.sh
```

---

## Dependencies
- `bash` — all scripts run on bash
- `python3` — for script 2
- `git` — to clone the repo
