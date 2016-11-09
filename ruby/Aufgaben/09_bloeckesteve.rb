#1.
arr = (15..20).to_a
# a)
puts "Aufgabe 1. a)"
arr.each { |item| puts item }

puts "______________________________\n"


# b)
puts "Aufgabe 1. b)"
arr.map.with_index { |x, i| puts "Index: #{i} - Wert: #{x}" }

puts "______________________________"
puts ""

# c)
hash = Hash[arr.map { |x| [x, y = rand(100..200)]}]


# d)
puts "Aufgabe 1. d)"
hash.each { |key, value| puts "Index: #{key} - Wert: #{value}"}

puts "______________________________"
puts ""

# e)
puts "Aufgabe 1. e)"
hash.each do |key, value|
  if value >= 151
    puts "Index: #{key} - Wert: #{value} WOW"
  end
  if value < 151

    puts "Index: #{key} - Wert: #{value}"
  end
end

puts "______________________________"
puts ""

# f)
puts "Aufgabe 1. f)"
arr_q = []
arr.each do |item|
  arr_q << item * item
end

puts arr_q
puts "______________________________"
puts ""

# g)
puts "Aufgabe 1. g)"
hash_q = {}
arr.each do |item|
  hash_q.store(item * item, nil)
end
 puts hash_q

 puts "______________________________"
 puts ""

# Zusatz: a)
puts "Zusatzaufgabe: a)"
arr_prime = ["2", "3", "5", "7", "11", "13", "17", "19", "23", "29"]
arr_prime.each do |item|
  if item.length == 1
    puts "#{item} ist einstellig."
  end                                   #Hier hätte man auch ein elsif wie unten in Aufgabe c) einbauen können
  if item.length == 2
    puts "#{item} ist zweistellig."
  end
end

puts "______________________________"
puts ""

# Zusatz: b)
puts "Zusatzaufgabe: b)"

personen = {vorname: "Theo", nachname: "Sommer", stadt: "Lodz"}
puts "Vorname: #{personen[:vorname]} \n" + "neue Zeile (kannst sie auch weglassen, ist nur zur Verdeutlichung man)"


puts "______________________________"
puts ""

# Zusatz: c)
puts "Zusatzaufgabe: c)"
prims = {}
arr_prime.each do |item|
  if item.length == 1
    prims.store(item, "ist einstellig")
  elsif item.length == 2
    prims.store(item, "ist zweistellig")
  end
end

prims.each { |key,value| puts "Die Primzahl: #{key} #{value}"}

puts "______________________________"
puts ""

# Zusatz: d)
puts "Zusatzaufgabe: d)"

einstellig = prims.select { |key, value| value == "ist einstellig"}
zweistellig = prims.select { |key, value| value == "ist zweistellig"}
einstellig.each do |key, value|
  puts "Einstellig: #{key}"
end
zweistellig.each do |key, value|
  puts "Zweistellig: #{key}"
end


puts "______________________________"
puts ""

# Zusatz: e)
puts "Zusatzaufgabe: e)"
personen2 = {vorname: "Richard", nachname: "Stallman", stadt: "Manhattan"}
personen3 = {vorname: "Mitchell", nachname: "Kapor", stadt: "Brooklyn"}
adressen = Array.new

adressen << "1. Person:"
 personen.each_pair do |key, value|
    adressen = adressen.to_a << key.to_s.capitalize + ": " + value
 end
  adressen << "2. Person:"
  personen2.each_pair do |key, value|
     adressen = adressen.to_a << key.to_s.capitalize + ": " + value
  end
  adressen << "3. Person:"
  personen3.each_pair do |key, value|
     adressen = adressen.to_a << key.to_s.capitalize + ": " + value
  end
adressen.each do |item|
  puts item
end


puts "______________________________"
puts ""


# 2. a)
worte = ["Pflaume", "Bauschaum", "Auster"]
# 2. b)
puts "Aufgabe 2.b)"
worte = ["Pflaume", "Bauschaum", "Auster"]
worte2 = Array.new
worte.each do |item|
  worte2 << item.downcase
end
worte2.each do |item|
  worte2.keep_if { |value| value.include?("aus") }
end
worte3 = Array.new
worte2.each do |item|
  item = item.capitalize
  worte3 << item
end
puts worte3

puts "______________________________"
puts ""
# 2. c)
puts "Aufgabe 2. c)"
worte = ["Pflaume", "Bauschaum", "Auster"]
worte.sort_by! { |item| item.length}
puts worte

puts "______________________________"
puts ""
# 2. d)
puts "Aufgabe 2. d)"
hash_worte = Hash.new
worte.each do |item|
  hash_worte.store(item.to_sym, item.length.to_i)
end
hash_worte.each do |key, value|
  puts "Index: #{key} - Value: #{value}"
end

puts "______________________________"
puts ""
# 3. a)
puts "Aufgabe 3. a)"
puts "Die heutigen Lottozahlen lauten:"
lottozahlen = Array.new
lottozahlen = (1..49).to_a
def lotto(lottozahlen)
  ausgabe = Array.new
  counter = 0
  while counter < 7
    lottozahlen_neu = lottozahlen.shuffle!
    ausgabe << lottozahlen_neu.last
    lottozahlen_neu = lottozahlen_neu.pop
    counter += 1
  end
  return ausgabe
end
puts lotto(lottozahlen)

puts "______________________________"
puts ""
# 3. b)
puts "Aufgabe 3. b)"
lottospieler = {"Peter" => nil, "Paul" => nil, "Mary" => nil}
lottospieler.each do |key, value|
  lottospieler.store(key, lotto(lottozahlen))
end
puts lottospieler


puts "______________________________"
puts ""
# 4.
puts "Aufgabe 4."
str_1 = "Programmieren, Federball, Whisky"
str_2 = "Fussball, Bier, Programmieren"

str_1 = "Programmieren, Federball, Whisky"
str_2 = "Fussball, Bier, Programmieren"

str3 = str_1.delete(",").split + str_2.delete(",").split
str3.to_a
match, diff = str3.partition { |str3| str3.eql?("Programmieren") }
match.uniq!

ergebnis = Hash.new
ergebnis.store(:diff, diff)
ergebnis.store(:match, match)
puts ergebnis


# Der oben stehende code ist vorzuziehen, da er sich auf Methoden bezieht, welche im Unterricht behandelt wurden.

# str3 = str_1.delete(",").split + str_2.delete(",").split
# str3.to_a
# diff = str3.reject{ |e| str3.count(e) > 1 }.uniq
# match = str3.select{ |e| str3.count(e) > 1 }.uniq
#
# ergebnis = Hash.new
# ergebnis.store(:diff, diff)
# ergebnis.store(:match, match)
#puts ergebnis


