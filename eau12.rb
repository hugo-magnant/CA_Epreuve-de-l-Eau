def my_bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

# Vérifie que tous les arguments sont des nombres
if ARGV.empty? || !ARGV.all? { |arg| arg.match?(/^\d+$/) }
  puts "error"
  exit 1
end

# Convertit les arguments en nombres
numbers = ARGV.map(&:to_i)

# Trie le tableau et l'affiche
sorted_array = my_bubble_sort(numbers)
puts sorted_array.join(' ')
