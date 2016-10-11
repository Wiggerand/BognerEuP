#Einrichten einer Kundenklasse.

#Eine Klasse customer soll eingerichtet werden.
#Beim Anlegen eines Customer-Objektes muss als notwendiger Parameter eine Kontonummer (Instanzvariable bank_account) eingegeben werden.
#Optional kann auch der Nachname des Kunden (lastname) eingegeben werden.

#Erstellen Sie SET und GET - Methoden für die Eigenschaften (Instanzvariablen) firstname, street, city. Z.B heisst die Set-Methode fuer street: set_street(pstreet)

#Eine Methode print_address soll beim Aufruf "puts obj.print_address' eine Ausgabe wie folgt erzeugen:
#Konto:................9999
#Name:.................Theo Lodgz
#Strasse:..............Hermelinweg 7
#Ort:..................22159 Hamburg

#Legen Sie das Objekt obj an, rufen Sie die entsprechenden Get-Methoden für die Dateneingabe auf, erzeugen Sie die Kontrollausgabe.

class Customer #Klasse Customer
		
		attr_accessor :firstname	#Setter und Getter in einem
		attr_accessor :lastname
		attr_accessor :street, :city
		# => def firstname		Das sind Getter, fallen weg wegen dem Setter und Getter über attr_accessor
		#	@firstname
		# => end
		def initialize (bank_account, lastname="")# Initialize Methode beginnen mit def
			@bank_account = bank_account
			@lastname = lastname
		end
		
		def print_address
			"Konto: ".ljust(15,".") + @bank_account.to_s + "\n" +
			"Name: ".ljust(15,".") + "#{@firstname} #{@lastname}" + "\n" +
			"Strasse:" .ljust(15,".") + @street.to_s + "\n" 
		end

end

obj = Customer.new(9999, "Lodgz")
obj.firstname = "Theo"
obj.street = "Hermelinweg 7"
#Erweitern mit city!!!
puts obj.print_address

class Customerrrr
	#Methode zum setzen der Instanzvariable
	#def set_name(name)
	#	@name = name
	#end

	def set_name=(name)
		@name = name
	end

	def ausgabe
		@name
	end

end
obj = Customerrrr.new 
#obj.set_name("Theo")
obj.set_name="Theo"

puts obj.ausgabe