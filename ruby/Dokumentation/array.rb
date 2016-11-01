#Definition
# Array ist eine geordnete Liste, die Verweise auf andere Objekte enthält
# 
# => Neues Array anlegen
# =>  	seats = []
# =>  	seats = Array.new

# =>  	seats = ["wert1", "wert2"]
# =>  	seats = %w(wert1 wert2)

# =>  Dem Array um einen wert erweitern / hinzufügen
# =>  	seats << "wert3"
# =>  	seats[3] = "wert4"
#  	 	seats.push("wert5")

# => Methoden von Arrays
# =>  	Array grösse:
# =>  		seats.size
#  		Im Array den letzten Wert löschen:
# =>  		seats.pop
# =>  	Array leer:
# =>  		seats.empty?
# =>  	Löschen eines Elementes im Array:
# =>  		seats.delete_at(3)
#
# => Iterations-Methoden:
# =>  	var = %w(ich und du)

# =>  	var.each
# =>  	 	Methode zum durchlaufen der einzelnen Elemente

# =>  	var.select
# 	 	 	Methode, die im Block einen boolschen Wert erwartet und bei true
# =>  	 	den Inhalt zurück gibt	
#			ret = var.select {|v| v.size > 1 }
# =>  	 	ret enthält ['ich', 'du']

# =>  	var.reject
#	 	 	Gegenteil von select
# =>  	 	ret = var.select {|v| v.size > 1 }
# =>  	 	ret enthält ['u']

# =>  	var.sort
# 	 	 	Gibt ein sortiertes Arry zurück



class Movie
  
  attr_reader :title

  def initialize(title, rank=0)
    @title = title.capitalize
    @rank = rank
  end

  def title=(title)
  	@title = title
  end
  
  def thumbs_up
    @rank += 1
  end
  
  def thumbs_down
    @rank -= 1
  end
  
  def to_s
    "#{@title} has a rank of #{@rank}."
  end
end

movie1 = Movie.new("Goonies", 10)
movie2 = Movie.new("Batman", 5)
movie3 = Movie.new("Spiderman",8)
movies = [movie1, movie2, movie3]

movies.each do |movie| #gerader strich <>|
	movie.thumbs_down
	puts movie
end