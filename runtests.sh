#!/bin/bash

# Our test cases folder
# folders=(
#     "1024sw_2es_4ats_binomial"
#     "1024sw_2es_4ats_cycle"
#     "1024sw_2es_4ats_expected"
#     "1024sw_2es_4ats_mesh"
#     "1024sw_2es_4ats_path"
#     "1024sw_2es_4ats_random"
#     "10sw_1es_1ats_mesh"
#     "3sw_1es_1ats_mesh"
#     "4sw_1es_2ats_random"
#     "50sw_2es_2ats_mesh"
#     "5sw_2es_1ats_mesh"
# )

folders=(
    "1024sw_2es_2ats_cyclic"
    "1024sw_2es_2ats_mesh"
    "128sw_2es_2ats_cyclic"
    "128sw_2es_2ats_mesh"
    "256sw_2es_2ats_cyclic"
    "256sw_2es_2ats_mesh"
    "512sw_2es_2ats_cyclic"
    "512sw_2es_2ats_mesh"
)

# Other test cases folder

# Define arrays for input, topology, and output files
input_files=()
topology_files=()
output_files=()

# Populate arrays based on folder names
for folder in "${folders[@]}"; do
    input_files+=("./csvs/OtherTestCases/$folder/streams.csv")
    topology_files+=("./csvs/OtherTestCases/$folder/topology.csv")
    output_files+=("./results/$folder.csv")
done

# Ensure the arrays have the same length
if [ ${#input_files[@]} -ne ${#topology_files[@]} ] || [ ${#input_files[@]} -ne ${#output_files[@]} ]; then
    echo "Error: The number of input, topology, and output files must match."
    exit 1
fi

# Loop through the files and run the command for each set
for i in "${!input_files[@]}"; do
    input_file="${input_files[$i]}"
    topology_file="${topology_files[$i]}"
    output_file="${output_files[$i]}"

    echo "Running: python ./GraphCreationAndTest.py $input_file $topology_file $output_file"

    python ./GraphCreationAndTest.py "$input_file" "$topology_file" "$output_file"

    if [ $? -ne 0 ]; then
        echo "Error: Command failed for $input_file and $topology_file."
    else
        echo "Successfully processed $input_file and $topology_file into $output_file."
        # runecho "Contents of $output_file:"
        # cat "$output_file"
    fi

done
