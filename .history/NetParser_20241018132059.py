"""
This script processes a CSV file containing network topology information and removes specific rows based on certain conditions.

Steps:
1. Read the CSV file: The script reads the input CSV file named 'example_topology.csv'.
2. Process each row: 
   - For each row, it checks if any value starts with 'SW_' or 'ES_'.
   - If the value starts with 'SW_' or 'ES_' and the number following the underscore is greater than 10, the row is skipped.
   - Otherwise, the row is added to the list of modified rows.
3. Write the modified data: The script writes the remaining rows to a new CSV file named 'modified_topology.csv'.

Usage:
- Ensure the input CSV file 'example_topology.csv' is in the same directory as this script.
- Run the script to generate the 'modified_topology.csv' file with the specified rows removed.
"""
import csv

# Step 1: Read the CSV file
input_filename = 'example_topology.csv'
output_filename = 'modified_topology.csv'

modified_rows = []

with open(input_filename, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    header = next(csvreader)  # Read the header row
    modified_rows.append(header)
    
    # Step 2: Process each row
    for row in csvreader:
        skip_row = False
        for value in row:
            if value.startswith('SW_') or value.startswith('ES_'):
                number = int(value.split('_')[1])
                if number > 10:
                    skip_row = True
                    break
        if not skip_row:
            modified_rows.append(row)

# Step 3: Write the modified data to a new CSV file
with open(output_filename, 'w', newline='') as csvfile:
    csvwriter = csv.writer(csvfile)
    csvwriter.writerows(modified_rows)