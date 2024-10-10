import csv

# Step 1: Read the CSV file
input_filename = 'smaller_topology.csv'
output_filename = 'modified_topology.csv'

modified_rows = []

with open(input_filename, 'r') as csvfile:
    csvreader = csv.reader(csvfile)
    header = next(csvreader)  # Read the header row
    modified_rows.append(header)
    
    # Step 2: Process each row
    for row in csvreader:
        if row[1].startswith('SW_'):
            # Filter out values with SW_N where N > 10
            row = [value for value in row if not (value.startswith('SW_') and int(value.split('_')[1]) > 10)]
        modified_rows.append(row)

# Step 3: Write the modified data to a new CSV file
with open(output_filename, 'w', newline='') as csvfile:
    csvwriter = csv.writer(csvfile)
    csvwriter.writerows(modified_rows)