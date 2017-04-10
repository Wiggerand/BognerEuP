class CustomerMailer < ApplicationMailer #ActionMailer::Base
	default from: 'autowerkstatt@web.de'
  layout 'mailer'

	def sendmail(customer)
		@customer = Customer.first

		mail(to: @customer.email, subject: "Die neue Saison steht vor der Tür!")#@customer.email.where(privacypolicy: true), subject: "Welcome to Autowerkstatt")
		
	end

end
