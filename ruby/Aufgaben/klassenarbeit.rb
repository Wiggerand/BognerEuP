class Bibliothek 

 	attr_accessor :buecher, :jahreszahl

 	

	def initialize(name)
		@name = name
		@buecher = []
	end
	
	def add_book(buch)
		@buecher < buch
		
	end

	def buch_aktion(jahreszahl)
		#ergebnis = jahreszahl - "#{gekauft_am}"
		

	end


end

class Buch 

	attr_accessor :gekauft_am
	attr_reader :autor, :titel
	
	def initialize(autor, titel, gekauft)
		@autor = autor
	    @titel = titel
	    @gekauft_am = gekauft
	end

	def to_s
		puts "#{@autor}, #{@titel}, #{@gekauft_am}"
		#puts "Der Autor des Buches ist: #{@autor}, der Titel des Buches lautet: \"#{@titel}\"und das Buch wurde im Jahre \"#{gekauft_am}\" gekauft!"
	end
	
end

class Autor 

	attr_reader :name, :geburtstag

	def initialize(name, geburtstag)
		@name = name
		@geburtstag = geburtstag
	end
	
end


obj = Bibliothek.new("Hamburg")
obj.buch_aktion(2014)

puts "-----------"
#obj.buch_aktion(2016)
#obj.gekauft_am[2,3]
#puts buch_aktion
#ergebnis = @jahreszahl - @gekauft_am
#puts ergebnis
puts "-------oooooo------"
autor_1 = Autor.new("Maier", "20.03.1980")
#puts autor_1.name +  "\n" + autor_1.geburtstag

buch_1 = Buch.new("#{autor_1.name}", "Niemand", 2005)
buch_2 = Buch.new("#{autor_1.name}", "Jeder", 2010)
buch_3 = Buch.new("#{autor_1.name}", "Immer wieder gerne", 2013)
buch_4 = Buch.new("#{autor_1.name}", "Morgen ist auch noch ein Tag", 2011)

@buecher = [buch_1, buch_2, buch_3, buch_4]
 

#puts @buecher.to_s

@buecher.each {|buch| 
	puts buch.to_s 
  }
puts "-------XXXXXXX------"
puts "#{@buecher[2]}, #{@buecher[3]},  #{@buecher[2]}, #{@buecher[0]} " #Aufgabe 6


