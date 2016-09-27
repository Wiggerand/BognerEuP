class Movie
	def initialize(pname, prank=5)	#Konstruktor
		@name = pname		#Instanzvariable@
		@rank = prank
	end

	def list_movie
			"Movie heißt: #{@name} und ist auf dem #{@rank}. Rank"
	end

	def thumps_up(value)
		@rank = @rank + value
	end

end

obj = Movie.new("Superman")
puts obj.list_movie

obj.thumps_up(7)
puts obj.list_movie

obj2 = Movie.new("Batman", 10)
puts obj2.list_movie
