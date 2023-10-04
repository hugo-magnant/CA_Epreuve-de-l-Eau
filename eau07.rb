# Vérifie si un argument a été fourni et s'il contient au moins un mot alphabétique
if ARGV.length != 1 || !(ARGV[0] =~ /[A-Za-z]/)
  puts "error"
  exit 1
end

# Récupère l'argument
str = ARGV[0]

# Transforme chaque mot pour que la première lettre soit en majuscule et le reste en minuscule
result = str.split(/\s+/).map { |word| word.capitalize }.join(" ")

puts result
