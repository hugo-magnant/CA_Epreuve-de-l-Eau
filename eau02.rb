# Vérifiez si des arguments ont été fournis
if ARGV.empty?
  puts "error"
  exit 1
end

# Inversez l'ordre des arguments et les affichez
ARGV.reverse.each do |arg|
  puts arg
end
