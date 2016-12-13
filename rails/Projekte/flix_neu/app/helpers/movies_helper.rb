module MoviesHelper

	#def format_price
	#	number_to_currency movie.total_gross, unit: "€", seperator: ",", delimiter: ".", format: "%n %"
		
	#end
	def flop(price)
		if price <= 50000000
			"Flop"
			
		else
			price
		end
		
	end
end
