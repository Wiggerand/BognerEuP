#Erstellen Sie eine Klasse Calculator mit einem Konstruktor, der zwei Zahlen entgegennimmt und in Instanzvariablen speichert. 
#Eine Methode add, und eine Methode subtract führt eine Addition und eine Substraktion durch und gibt das Ergebnis zurueck.
#Legen Sie ein Objekt an und wenden Sie die Methoden add und subtract an.

class Calculator #Klasse

	def initialize(zahl1, zahl2) #Konstructor
		@zahl1 = zahl1
		@zahl2 = zahl2
	end

	def add   				#Methode
		@zahl1 + @zahl2
	end

	def substract 
		@zahl1 - @zahl2
	end
		
	
end
obj = Calculator.new(10, 8)		#Objektinstanz wird erzeugt mit new und zu einer Variablen "obj" mit "=" zugewiesen
puts obj.add 					#Aufruf der Methode erfolgt mit obj.add
puts obj.substract