import subprocess
import time
import os
import re 
import sys 

def check_license(license_name, max_retries=5, retry_interval=5):
    license_server_address = os.environ.get('MGLS_LICENSE_FILE')
    if not license_server_address:
        print("License server address not found in the environment variable.")
        sys.exit(1)
    retries = 0
    while retries < max_retries:
        try:
            # Execute the lmutil command to check the license status
            command = ['lmutil', 'lmstat', '-c', license_server_address, '-f', license_name]
            output = subprocess.check_output(command, universal_newlines=True)
            
            # Extract the license information from the output
            regex = r"Users of " + license_name + r":\s+\(Total of (\d+) licenses issued;\s+Total of (\d+) licenses in use\)"
            match = re.search(regex, output)

            if match:
                total_licenses_issued = int(match.group(1))
                licenses_in_use = int(match.group(2))
                available_licenses = total_licenses_issued - licenses_in_use

                return f"The license '{license_name}' is available. Total licenses: {total_licenses_issued}, In use: {licenses_in_use}, Available: {available_licenses}"
            else:
                print(f"Failed to parse the license information for '{license_name}' from the lmutil output.")
                sys.exit(1)

        except subprocess.CalledProcessError as e:
            retries += 1
            if retries < max_retries:
                print(f"License check failed. Retrying in {retry_interval} seconds...")
                time.sleep(retry_interval)
            else:
                print(f"Error occurred while checking the license after {max_retries} retries: {e}")
                sys.exit(1)

result = check_license('msimhdlsim', max_retries=5, retry_interval=5)
print(result)
