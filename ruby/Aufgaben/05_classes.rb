class Player

	def initialize(pname, phealth=100)
		@name = pname
		@health = phealth
	end
	
	def to_s
		"Ich bin #{@name} und ich habe #{@health} Lebenspunkte!"
	end	

	def blamed
		@health = @health - 15
		"Ich wurde geblamed und habe jetzt noch #{@health} Lebenspunkte!!!"
	end
	
	def w00t
		@health += 12 #Kurze schreibweise
		"Ich wurde stinksauer und habe einen adrenalin Schub und habe jetzt wieder #{@health} LP!!!"
	end
end

player1 = Player.new("Batman")
puts player1
puts player1.w00t
puts player1.blamed


player2 = Player.new("Superman")
puts player2.blamed
puts player2
