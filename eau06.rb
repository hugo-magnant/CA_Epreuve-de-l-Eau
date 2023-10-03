# Vérifie si un argument a été fourni
if ARGV.length != 1
  puts "error"
  exit 1
end

# Récupère l'argument
str = ARGV[0]

# Variable pour suivre si la prochaine lettre doit être en majuscule
upcase_next = true

# Transforme la chaîne
result = str.each_char.map do |c|
  if c =~ /[A-Za-z]/  # Vérifie si c'est une lettre
    if upcase_next
      upcase_next = false
      c.upcase
    else
      upcase_next = true
      c.downcase
    end
  else
    c
  end
end.join

puts result
