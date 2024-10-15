###################################################################
# render_mk.py
# nikhil-wisig
# 03/04/2023
###################################################################
import yaml
import sys 
from jinja2 import Environment, FileSystemLoader

# Check if the correct number of command line arguments are provided
if len(sys.argv) != 2:
    print("Usage: python render_mk.py <board>")
    sys.exit(1)

board = sys.argv[1]
yaml_dir = 'yaml/'
yaml_file = board + '.yaml'
out_file = board + '.mk'
template_dir = 'templates/'
template_file = 'config.mk.j2'

# Load the template from the file system
env = Environment(loader=FileSystemLoader(template_dir))
template = env.get_template(template_file)

# Open the YAML file and read the list
with open(yaml_file, "r") as f:
    config = yaml.safe_load(f)

# Render the template with the input data
output = template.render(**config)

# Open the output file and write each element of the list on a new line
with open(out_file, 'w') as f:
    f.write(output)