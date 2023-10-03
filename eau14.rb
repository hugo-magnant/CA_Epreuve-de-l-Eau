# Vérification des arguments
if ARGV.empty?
  puts "error"
  exit 1
end

# Tri des arguments
sorted_args = ARGV.sort_by { |arg| arg }

# Affichage des arguments triés
puts sorted_args.join(' ')
