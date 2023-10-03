# Vérifie si le bon nombre d'arguments a été fourni
if ARGV.length != 2
  puts "error"
  exit 1
end

# Récupère les arguments et tente de les convertir en entiers
begin
  min = Integer(ARGV[0])
  max = Integer(ARGV[1])
rescue
  puts "error"
  exit 1
end

# Assure que min est plus petit que max
min, max = [min, max].minmax

# Affiche les nombres de min à max (exclu)
(min...max).each { |n| print "#{n} " }
puts
