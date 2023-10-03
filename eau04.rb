# Vérifie si un argument a été fourni et s'il est un nombre entier positif
if ARGV.length != 1 || ARGV[0].to_i < 0 || !ARGV[0].match?(/\A-?\d+\Z/)
  puts -1
  exit 1
end

# Fonction pour vérifier si un nombre est premier
def prime?(n)
  return false if n < 2
  (2..Math.sqrt(n).to_i).each do |i|
    return false if n % i == 0
  end
  true
end

# Convertit l'argument en entier et le met dans la variable start
start = ARGV[0].to_i

# Cherche le premier nombre premier supérieur à start
n = start + 1
n += 1 until prime?(n)

puts n
