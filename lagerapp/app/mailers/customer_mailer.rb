class CustomerMailer < ApplicationMailer 
	default from: 'autowerkstatt@web.de'
  layout 'mailer'

	def sendmail(customer)			#Der Customer wird aus dem Controller in der Action Sendmail übergeben um im CustomerMailer damit zu arbeiten
		@customer = customer
		mail(to: @customer.email, subject: 
		"Die neue Saison steht vor der Tür!")		#Betreffzeile der generierten E-Mail
	end

end
