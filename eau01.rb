# Initialize an empty array to store the combinations
combinations = []

# Loop through each number from 0 to 99
for i in 0..99
  for j in (i + 1)..99
    # Format the numbers to be two digits
    first_num = format('%02d', i)
    second_num = format('%02d', j)
    
    # Create the combination string and add it to the array
    combination = "#{first_num} #{second_num}"
    combinations << combination
  end
end

# Print the combinations
puts combinations.join(", ")
