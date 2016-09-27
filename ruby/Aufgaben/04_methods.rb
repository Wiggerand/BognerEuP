def say_hello(variable="Guten Tag")
	puts "#{variable} Ich bin Ludwig wir haben heute den #{set_time}!!"
end

def set_time
	Time.now.strftime("%d.%m.%Y und es ist jetzt %H:%M Uhr")
end


say_hello ("Moin")