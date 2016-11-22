arr = (15..20).to_a

puts arr  
puts "---------------------\n"

arr.each { |value|
puts "Index: #{arr.index(value)} - Wert: #{value}"}

puts "---------------------\n"

hash1 = Hash.new

