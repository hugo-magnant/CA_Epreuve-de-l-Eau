# Vérifie si un argument a été fourni et s'il est un nombre entier positif ou nul
if ARGV.length != 1 || ARGV[0].to_i < 0 || !ARGV[0].match?(/\A-?\d+\Z/)
  puts -1
  exit 1
end

n = ARGV[0].to_i

# Initialise les variables pour la suite de Fibonacci
a, b = 0, 1

# Calcule le N-ème élément de la suite de Fibonacci
n.times do
  a, b = b, a + b
end

puts a
