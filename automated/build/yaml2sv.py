###################################################################
# render_mk.py
# nikhil-wisig
# 03/04/2023
###################################################################
import yaml
import math
import os
import numpy as np
from jinja2 import Environment, FileSystemLoader


script_dir = os.path.dirname(os.path.abspath(__file__))
# Get the absolute path of debugcore.yaml
tcl_script = os.path.join(script_dir, "debugcore.yaml")

out_file = os.path.join(script_dir, "../channels/tx_rx/src/inst_debugcore.sv")

template_dir = os.path.join(script_dir, "templates")
template_file = "debugcore.sv.j2"#os.path.join(script_dir, "templates", "debugcore.sv.j2")

# Load the event names dictionary from the YAML file
with open(tcl_script, 'r') as f:
    data = yaml.safe_load(f)

# Extract the names of all events
event_names = [event["name"] for event in data["events"]]

msg_names = [event["name"] for event in data["messages"]]

msg_width = [event["width"] for event in data["messages"]]

# Load the template from the file system
env = Environment(loader=FileSystemLoader(template_dir))
template = env.get_template(template_file)
dw_timer = 24
data["dw_timer"] = dw_timer
data["num_events"] = len(event_names)
data["num_msgs"] = len(msg_names)
data["dw_event_logs"] = dw_timer + math.ceil(math.log2(len(event_names)))
data["dw_msg_logs"] = dw_timer + max(msg_width) + math.ceil(math.log2(len(msg_names)))
data["input_max_msg_width"] = max(msg_width)

# Render the template with the input data
output = template.render(**data)

# Open the output file and write each element of the list on a new line
with open(out_file, 'w') as f:
    f.write(output)