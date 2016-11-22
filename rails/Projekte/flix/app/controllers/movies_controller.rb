class MoviesController < ApplicationController

	def index

	#	@movies = %w(Ironman Superman Spidermann)
		@movies = Movie.all

		
	end

end
