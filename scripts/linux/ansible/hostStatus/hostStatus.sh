#!/bin/bash -v

# Define the final output file with a timestamp
output_file="host_status_$(date +%Y%m%d_%H%M%S).txt"

# Run the Ansible playbook to gather host status information from ESXi
echo "Running the Ansible playbook to gather host status information..."
ansible-playbook -i hosts.ini hostStatus.yml | tee "$output_file"

# Inform the user that the output has been saved
echo "The host status information has been saved to $output_file"

# End of script
echo "Script execution completed."




