# Initialize an empty array to store the unique combinations
unique_combinations = []

# Loop through each digit from 0 to 9
for i in 0..9
  for j in 0..9
    for k in 0..9
      # Create an array of the three digits
      digits = [i, j, k]
      
      # Sort the array and join it back into a string
      sorted_digits = digits.sort.join
      
      # Check if all the digits are unique and if this combination hasn't been added yet
      if digits.uniq.length == 3 && !unique_combinations.include?(sorted_digits)
        unique_combinations << sorted_digits
      end
    end
  end
end

# Sort the unique combinations array
unique_combinations.sort!

# Print the unique combinations
puts unique_combinations.join(", ")
