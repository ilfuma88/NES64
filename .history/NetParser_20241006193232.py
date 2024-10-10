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
        if row[1].startswith('SW_'):
            sw_number = int(row[1].split('_')[1])
            if sw_number > 10:
                continue  # Skip this row
        elif row[0] == 'ES' and row[1].startswith('ES_'):
            es_number = int(row[1].split('_')[1])
            if es_number > 10:
                continue  # Skip this row
        modified_rows.append(row)

# Step 3: Write the modified data to a new CSV file
with open(output_filename, 'w', newline='') as csvfile:
    csvwriter = csv.writer(csvfile)
    csvwriter.writerows(modified_rows)