# Vérifie qu'au moins deux arguments sont fournis et que ce sont des nombres
if ARGV.length < 2 || !ARGV.all? { |arg| arg.match?(/^-?\d+$/) }
  puts "error"
  exit 1
end

# Convertit les arguments en nombres
numbers = ARGV.map(&:to_i)

# Initialise une variable pour la différence minimale, initialement à l'infini
min_diff = Float::INFINITY

# Double boucle pour comparer chaque paire d'éléments
numbers.each_with_index do |num1, i|
  numbers.each_with_index do |num2, j|
    next if i == j # Skip si les deux éléments sont les mêmes

    # Calcule la différence absolue entre num1 et num2
    diff = (num1 - num2).abs

    # Met à jour la différence minimale si nécessaire
    min_diff = [min_diff, diff].min
  end
end

# Affiche la différence minimale
puts min_diff
