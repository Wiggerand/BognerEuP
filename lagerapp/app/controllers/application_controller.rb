class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  	def current_user
  		User.find(session[:user_id]) if session[:user_id]
  	end

  helper_method :current_user

	def current_user_admin?
		current_user && current_user.admin?
	end

  helper_method :current_user_admin?

	def require_login
		unless current_user
			redirect_to new_session_url, alert: "Bitte erst einloggen!"
		end
	end

	def require_admin
		unless current_user_admin?
			redirect_to root_path, alert: "Na, schon mal etwas von Hierarchie gehört, du bist kein Admin!!!"
		end
	end
end
