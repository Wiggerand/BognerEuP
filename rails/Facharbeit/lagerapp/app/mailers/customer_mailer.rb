class CustomerMailer < ActionMailer::Base #ApplicationMailer
	default from: 'Ihre freundliche Autowerkstatt autowerkstatt@web.de'
  layout 'mailer'

	def sendmail(customer)
		@customer = Customer.first

		mail(to: @customer.email, subject: "Alter, mach hinneeeeeeeeeeeeeee")#@customer.email.where(privacypolicy: true), subject: "Welcome to Autowerkstatt")
		
	end

end
