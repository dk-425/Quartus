from jinja2 import Environment, FileSystemLoader
import yaml
import sys 
import os 

# Check if the correct number of command line arguments are provided
if len(sys.argv) != 2:
    print("Usage: python render_tcl.py <board>")
    sys.exit(1)

# Define the path to the template directory and the name of the template file
template_dir = 'templates/'
template_file = sys.argv[1] + '.tcl.j2'

# Define the path to the input file
input_file = os.path.join(sys.argv[1] + '.yaml')
output_file = os.path.join(sys.argv[1] + '.tcl')

# Load the template from the file system
env = Environment(loader=FileSystemLoader(template_dir))
template = env.get_template(template_file)

# Load the input data from the file system
with open(input_file) as f:
    input_data = yaml.safe_load(f)

# Render the template with the input data
output = template.render(**input_data)

with open(output_file, 'w') as f:
    f.write(output)
