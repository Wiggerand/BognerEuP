name1 = "Larry"
name2 = "Curly"
name3 = "Moe"
name4 = "Shamp"
health = "has a health of"
health1 = 60
health2 = 125
health3 = 100
health4 = 90
puts "#{name1} #{health} #{health1}"

puts "#{name2} #{health} #{health2}"

2.times do
	puts "#{name3.rjust(20, '*')} #{health} #{health3.to_s.ljust(20, '*')}" 
	end
2.times do
	puts "#{name4.ljust(20, '.')} #{health4} health"
	end

puts "Players: \n\t#{name1}\n\t#{name2}\n\t#{name3}" #\n Zeilenumbruch \t Tabulator



	puts "The game started on #{Time.now()}"