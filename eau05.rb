# Vérifie si deux arguments ont été fournis
if ARGV.length != 2
  puts "error"
  exit 1
end

# Récupère les deux arguments
str1 = ARGV[0]
str2 = ARGV[1]

# Vérifie si la seconde chaîne se trouve dans la première
result = str1.include?(str2)

puts result ? "true" : "false"
