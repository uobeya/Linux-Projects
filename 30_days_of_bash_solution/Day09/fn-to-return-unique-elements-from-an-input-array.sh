#!/bin/bash

# Function to return unique elements from an input array

unique_elements(){
	local input_array=("$@")
	local unique_array=()
	
	# Iterate over the input array
fi	for element in "${input_array[@]}"; do
		# check if the element is already in the unique_array
		if [[ ! "${unique_array[@]} " =~ " ${element} " ]]; then
			unique_array+=("$element")
		fi
	done

	# Return the unique array
	echo "${unique_array[@]}"

}

# Example usage
input_array=("apple" "banana" "apple" "orange" "banana" "grape")

# Call the function and store the result in a new array
result_array=($(unique_elements "${input_array[@]}"))

# Print the unique elements
echo "Unique elements: ${result_array[@]}"
