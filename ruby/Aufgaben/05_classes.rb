#a. erstellen Sie eine Klasse mit der Bezeichnung Player
#b. erstellen Sie ein Objekt player1 der Klasse 
#c. erstellen Sie eine initialize - Methode, die die Parameter name und health hat und aus diesen Werten die Instanzvariablen @name und @health initialisiert
#d. updaten Sie das Objekt player1 und lassen sich das objekt anzeigen
#e. setzen Sie fuer health einen Standardwert 100
#f. legen Sie eine neues Objekt player2 an, das nur den Namen als Parameter hat
#g. passen Sie die say_hello - Methode aus der vorherigen Übung zur Ausgabe ein, so dass puts player1.say_hello die Ausgabe ergibt
#h. fuegen Sie eine Instanzmethode blam und w00t hinzu, die den Wert fuer health um 10 hochsetzt, bzw. reduziert und ausgibt: Tom got blamed, bzw. w00ted.
#i. die say_hello - Methode soll aufgerufen werden, wenn nur das Objekt ausgegeben werden soll, also puts players erfolgt.
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
