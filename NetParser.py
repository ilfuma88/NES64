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