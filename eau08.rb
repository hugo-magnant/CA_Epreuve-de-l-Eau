# Vérifie si un argument a été fourni
if ARGV.length != 1
  puts "error"
  exit 1
end

# Récupère l'argument
str = ARGV[0]

# Vérifie si la chaîne contient uniquement des chiffres
if str =~ /^\d+$/
  puts "true"
else
  puts "false"
end
