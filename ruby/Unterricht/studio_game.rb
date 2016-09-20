#Aufgaben 02strings.txt
name1 = "Larry"
health = 60

puts "#{name1}\'s health is #{health}" #Aufgabe d.

puts "#{name1}\'s health is #{health * 3}" #Aufgabe e.

puts "#{name1}\'s health is #{health / 9.to_f}" #Aufgabe f. mit Komma

puts "#{name1}\'s health is #{health / 9.to_i}" #Aufgabe f. mit ganzen Zahlen

name2 = "Curly"

name3 = "Moe"

puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}" #\n Zeilenumbruch \t Tabulator



	puts "The game started on #{Time.now()}"