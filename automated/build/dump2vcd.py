from vcd import VCDWriter
import pandas as pd
from datetime import date
import yaml
import sys, getopt 
import math 
import os
import plotly.express as px

def cleanup_csv(file):
    # removes all spaces from the file
    with open(file, 'r') as f:
        lines = f.readlines()
    lines = [line.replace(' ', '') for line in lines]
    with open(file, 'w') as f:
        f.writelines(lines)

# can be used for simulations
def load_csv(file):
    # Read the CSV file
    df = pd.read_csv(file, dtype={"time":int, "event":int})
    # it prints the csv file data
    num_wrap = 0
    for index, row in df.iterrows():
        # self check whether the data is coming or not
        if(row["event"] == 0):
            num_wrap = num_wrap + 1
        # it will add the timestamp after the wrap time indication is done
        df.at[index, "time"] += num_wrap * 16777216
    return df

# can be used for stp dumps and other raw data dumps via eth or dma
def load_raw(file, id_width):
    # Read the CSV file
    raw_df = pd.read_csv(file, dtype="unicode")
    raw_df = raw_df.filter(regex='eventlogs_tdata\[\d+\.\.0\]', axis="columns")
    
    timestamps = []
    events = []
    for index, log in raw_df[raw_df.columns[0]].items():
        if("X" not in log):
            # [2:] - to remove 0b
            # [:-6] to remove last 6 bits used for event id
            # timestamp = int(bin(int(log, 16))[2:-id_width], 2)
            # event = int(bin(int(log, 16))[-id_width:], 2)

            event = int(format(int(log, 16), '#032b')[2:8], 2)
            timestamp = int(format(int(log, 16), '#032b')[-24:], 2)

            timestamps.append(timestamp)
            events.append(event)
    
    num_wrap = 0
    for index, time in enumerate(timestamps):
        # self check whether the data is coming or not
        if(events[index] == 0):            
            num_wrap = num_wrap + 1
        # it will add the timestamp after the wrap time indication is done
        timestamps[index] += num_wrap * 16777216

    print(num_wrap)
    logs_df = pd.DataFrame()
    logs_df["time"] = timestamps
    logs_df["event"] = events

    return logs_df
    
def write_vcd(df, event_names, vcdfile):

    # Group the events by time
    grouped = df.groupby('time')['event'].apply(list)

    fout = open(vcdfile, "w+")

    now = date.today()
    with VCDWriter(fout, timescale='1 ns', date=str(now)) as writer:
        # register all events
        for event in event_names:
            # var_name = f'event_{i}'
            var = writer.register_var(scope='top', name=event, var_type='wire', size=1, init=0)
            globals()[event] = var

        # Iterate through the grouped data and write changes
        for time, events in grouped.items():
            for event in events:
                event_name = event_names[event]
                cmd = f"writer.change({event_name}, {time}, 1)"
                exec(cmd)
            # set all events that occurred in this cycle back to 0 in the next cycle
            for event in events:
                event_name = event_names[event]
                cmd = f"writer.change({event_name}, {time + 1}, 0)"
                exec(cmd)

def main(argv):
    inputfile = '/your_path/wnKyocera/build/stp1_prachfailed.csv' # default files
    outputfile = '/your_path/wnKyocera/build/stp1_prachfailed.vcd'
    type = 'raw'
    opts, args = getopt.getopt(argv,"hi:o:t:",["ifile=","ofile=","type="])
    for opt, arg in opts:
        if opt == '-h':
            print ('dump2vcd.py -i <inputfile.csv> -o <outputfile.vcd> -m csv/raw')
            sys.exit()
        elif opt in ("-i", "--ifile"):
            inputfile = arg
        elif opt in ("-o", "--ofile"):
            outputfile = arg
        elif opt in ("-t", "--type"):
            type = arg

    script_dir = os.path.dirname(os.path.abspath(__file__))
    # Get the absolute path of debugcore.yaml
    yaml_file = os.path.join(script_dir, "debugcore.yaml")

    # Load the event names dictionary from the YAML file
    with open(yaml_file, 'r') as f:
        data = yaml.safe_load(f)

    # Extract the names of all events
    event_names = [event["name"] for event in data["events"]]
    event_names.insert(0, "wrap_time")
    id_width = math.ceil(math.log2(len(event_names)))
    
    # cleanup whitespaces
    cleanup_csv(inputfile)

    if(type == "csv"):
        df = load_csv(inputfile)
    elif(type == "raw"):
        df = load_raw(inputfile, id_width)
    else:
        print("ERROR: type has to be csv/raw")
        raise ValueError
    
    # fig = px.line(df.time, x=df.index)
    # fig.show()
    write_vcd(df, event_names, outputfile)

if __name__ == "__main__":
   main(sys.argv[1:])