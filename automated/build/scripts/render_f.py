import yaml
import sys 

# Check if the correct number of command line arguments are provided
if len(sys.argv) != 2:
    print("Usage: python render_f.py <board>")
    sys.exit(1)

board = sys.argv[1]
yaml_dir = 'yaml/'
yaml_file = board + '.yaml'
f_file = board + '.f'

# Open the YAML file and read the list
with open(yaml_file, "r") as f:
    config = yaml.safe_load(f)

# Open the output file and write each element of the list on a new line
with open(f_file, "w") as f:
    for file in config['files']:
        f.write(file + "\n")
