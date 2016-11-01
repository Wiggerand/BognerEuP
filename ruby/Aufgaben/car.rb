#1.  Erstellen Sie eine Klasse Car mit den Eigenschaften: ps, typ, verbrauch

#1a. Stellen Sie sicher, das die Eigenschaft typ beim ersten Buchstaben einen Großbuchstaben erstellt

#1b. Stellen Sie sicher, dass bei der Eingabe einer Zahl keine Ausnahme geworfen wird

#1c. Stellen Sie sicher, dass bei der Eingabe überprüft wird, ob es sich um einen String handelt, 
#    der mindestens 3 Ziffern lang ist

#2.  Das Fahrzeug kann beschleunigen. Die Methode beschleunigen bekommt einen Parameter zeit, der 
#    die Sekundenzahl des Beschleunigungsvorgangs enthält. Ausgegeben wird die erreichte 
#    Geschwindigkeit in km/h. Die Geschwwindigkeit wird errechnet aus PS mal Sekunden geteilt durch 100
#    und ergibt die Einheit Meter / Sekunden

#2a.    Erstellen Sie einen Konstruktor, der für die Eigenschaft ps einen Wert erwartet, für die 
#    Eigenschaft typ optional eine Initialisierung ermöglicht

#2b. Legen Sie 3 Objekte von dieser Klasse an: Objekt1: ps: 200 typ:'Klaumich', 
#    Objekt2: ps: 80 typ: 'Hauni', Objekt3: ps: 100

#5.  Speichern Sie die Objekte in einem Array und lassen Sie das Array durchlaufen, geben Sie den Typ aus

#6.  Legen Sie 3 weitere Objekte von der Klasse Car an. Die Daten stehen in einem Hash, wobei die erste Position und 
#    die 2. Position die PS enthält: vals = {'BMW' => 200, 'Trabbi' => 150, 'Honda' => 20}. 
#    Lassen Sie den Hash durchlaufen, erzeugen jeweils ein Car Objekt und legen dieses im Array cars2 ab.
#7.  Erstellen Sie eine Klasse 'Driver' mit der Eigenschaft 'name', die im Konstruktor gesetzt werden muss. Es gibt ein Array 
#    cars, das im Konstruktor initialisiert wird. Es gibt eine Methode add_cars mit der für das
#    Driver - Objekt ein Fahrzeug hinzugefügt werden kann. Es gibt eine Ausgabe Show - Cars
#    die, die Fahrzeuge mit der Typbezeichnung auflistet. Legen Sie ein Objekt Theo an, ordnen Sie
#    von den Car - Arrays jeweils das erste dem Driver - Objekt zu. Lassen Sie die daten der zugeordneten Fahrzeuge ausgeben.

class Car
	attr_accessor :verbrauch
    attr_reader :typ, :ps

    def initialize(ps, typ="")
    	@ps  = ps
    	@typ = typ
    end

    def ps=(ps)
    	@ps = ps if ps > 0
    end

    def typ=(typ)
       	if !typ.is_a?(String)  						#.is_a?(String) vergleicht nach einem String
    			puts "War kein String"
    	elsif typ.size < 3
    		puts "String zu kurz"
    	else
    		@typ = typ.to_s.capitalize 				#.capitalize Macht aus dem 1. Buchstaben einen Großen
    	end 
    end

    def beschleunigen(zeit)							#2. Methode beschleunigen mit Parameter zeit
    	geschwindigkeit = @ps * zeit / 100 

    	puts "Die Geschwindigkeit beträgt nun: #{convert_to_kmh(geschwindigkeit)} km/h" 
    end

    private
    	def convert_to_kmh(var)
    		var * 3.6
    	end
end				

class Lkw < Car
	
end

obj = Car.new(99)
obj.typ = "Skoda"
puts obj.typ

obj.ps = 180
obj.beschleunigen(10)

obj.verbrauch = 8

obj = Lkw.new(999)
obj.typ = "Scania"
puts obj.typ

obj.ps = 200
obj.beschleunigen(25)


car1 = Car.new(200, 'Klaumich')
car2 = Car.new(80, 'Hauni')
car3 = Car.new(100)

cars = [car1, car2, car3]
cars.inspect

cars.each do |car|
				if car.typ.empty?
					puts "Kein Wert!"
		
				else
					puts car.typ
				end
	
		  end

class Driver									#Aufgabe 7
	attr_accessor :name							

	def initialize(name)						#Konstructor
		@name = name
		@cars = []								#Oder Array.new
	end

	def add_cars(car)
		@cars << car
	end

	def show_cars
		@cars.each do |car|
			puts car.typ
			
		end
		
	end

end


vals = {'BMW' => 200, 'Trabbi' => 150, 'Honda' => 20}			#Aufgabe 6.
cars2 = []														#Leeres Array
vals.each do |typ, ps|
		cars2 << Car.new(ps, typ)
	end
	puts cars2.inspect


	cars2 << cars												#Cars wird dem Array Cars2 hinzugefügt an 3. Stelle, geht auf Index 1
#	puts cars2[3][1].typ 										#und gibt den typ des an Index 1 steht wieder 'Hauni'



	#Erstellen Sie eine Klasse 'Driver' mit der Eigenschaft 'name', die im Konstruktor gesetzt werden muss. Es gibt ein Array 
    #cars, das im Konstruktor initialisiert wird. Es gibt eine Methode add_cars mit der für das
    #Driver - Objekt ein Fahrzeug hinzugefügt werden kann. Es gibt eine Ausgabe Show - Cars
    #die, die Fahrzeuge mit der Typbezeichnung auflistet. Legen Sie ein Objekt Theo an, ordnen Sie
    #von den Car - Arrays jeweils das erste dem DRIVER - oBJEKT ZU. lASSEN Sie die daten der zugeordneten Fahrzeuge ausgeben.

obj = Driver.new("Theo")
obj.add_cars(cars[1])
obj.add_cars(car2)
obj.show_cars

