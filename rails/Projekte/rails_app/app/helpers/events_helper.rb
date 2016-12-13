module EventsHelper

	def format_price(event)

		if event.free?

			content_tag(:strong, 'FREE')
			#{}"<strong>Free</strong>".html_safe
		else
			number_to_currency event.price, unit: "€", seperator: ",", delimiter: ".", format: "%n %u"
		end
		
	end

end
