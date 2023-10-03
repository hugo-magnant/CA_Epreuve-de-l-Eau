# Vérifie que des arguments ont été fournis
if ARGV.length < 2
  puts "error"
  exit 1
end

# Récupère le dernier argument comme l'élément recherché
searched_element = ARGV[-1]

# Récupère tous les arguments sauf le dernier pour former le tableau
array = ARGV[0..-2]

# Trouve le premier index de l'élément recherché dans le tableau
index = array.index(searched_element)

# Affiche l'index ou -1 si l'élément n'est pas trouvé
puts index.nil? ? -1 : index
