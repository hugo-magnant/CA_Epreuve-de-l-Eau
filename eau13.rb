def my_select_sort(array)
  n = array.length
  for i in 0...n
    min_index = i
    for j in (i + 1)...n
      min_index = j if array[j] < array[min_index]
    end
    array[i], array[min_index] = array[min_index], array[i] if min_index != i
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
sorted_array = my_select_sort(numbers)
puts sorted_array.join(' ')
