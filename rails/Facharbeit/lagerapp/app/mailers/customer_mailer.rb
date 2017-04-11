class CustomerMailer < ApplicationMailer #ActionMailer::Base
	default from: 'autowerkstatt@web.de'
  layout 'mailer'

	def sendmail(customer)
		@customer = customer
		mail(to: @customer.email, subject: "Die neue Saison steht vor der Tür")#
	end

end
