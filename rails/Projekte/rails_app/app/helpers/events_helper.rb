module EventsHelper

	def format_price(event)

		if event.free?

			content_tag(:strong, 'FREE')
			#{}"<strong>Free</strong>".html_safe
		else
			number_to_currency event.price
		end
		
	end

end
