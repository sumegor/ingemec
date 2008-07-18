class HomeController < ApplicationController
	layout "standar"
	
	#skip_before_filter :check_authentication, :check_authorization
	
	def index
		
	end
end
