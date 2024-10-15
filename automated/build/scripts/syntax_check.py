"""
File: syntax_check.py
Description: Compiles all files included in the .yaml file using quartus_syn
Author: nikhil-wisig
Date: 26-05-2023
Version: 0.1
Usage: python3 syntax_check.py <yaml_file.yaml>
Todo: 
1. There seems to be a "Fatal Error: Segment Violation" coming from quartus_syn sometimes. 
Changing the analysis order is also impacting this so either find an alternative way to compile
or try to fix the issue.
2. Module is only checking for syntax. Any issues in instantiation of modules are not being detected.

"""
import yaml
import subprocess
import sys
import os 

def read_files_from_yaml(filename):
    with open(filename, 'r') as yaml_file:
        data = yaml.safe_load(yaml_file)
        file_list = data['files']
    return file_list

# Check if the YAML file name is provided as a command-line argument
if len(sys.argv) < 2:
    print("Please provide the YAML file name as a command-line argument.")
    sys.exit(1)

# Extract the YAML file name from the command-line argument
yaml_file = sys.argv[1]

files = read_files_from_yaml(yaml_file)

# excluding intel ips. proper dir structure will avoid this
files[:] = [f for f in files if (f.endswith('.v') or f.endswith('sv'))]

# Get the directory path of the Python script
yaml_directory = os.path.dirname(os.path.abspath(yaml_file))

script_directory = os.path.dirname(os.path.abspath(__file__))

# Get the absolute path of syntax_check.tcl
tcl_script = os.path.join(script_directory, "syntax_check.tcl")

# Modify file paths to be relative to the script directory
modified_files = []
for file in files:
    modified_file_path = os.path.normpath(os.path.join(yaml_directory, file))
    modified_files.append(modified_file_path)

# Convert the file list to a string separated by spaces
file_list_str = ' '.join(modified_files)

f = open("syntax_check.log", "w")
# Call the Tcl script and pass the file list as an argument
if sys.version_info[1] > 8:
    status = subprocess.run(['quartus_syn', '-t', tcl_script, file_list_str], stdout=f, stderr=subprocess.PIPE, text=True)
else:
    status = subprocess.run(['quartus_syn', '-t', tcl_script, file_list_str], stdout=f, stderr=subprocess.PIPE, universal_newlines=True)

if(status.returncode):
    print("Syntax Check Failed. Check syntax_check.log")
else:
    print("Syntax Check Passed!")
    # delete the project files
    os.remove("syntax_check.qpf")
    os.remove("syntax_check.qsf")
