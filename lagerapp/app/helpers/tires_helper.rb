module TiresHelper

	def store(storage1)
		if storage1 == true
			"Lager 1"
		else
			"Lager 2"
		end
	end

	def check_dot(dotyear)
		date = DateTime.now() 
   		cal = date.strftime("%Y").to_i - 2000
		 if cal - dotyear <= 5 
            "success"
					
		 else
			"text-danger danger"	
		 end		
	end
end