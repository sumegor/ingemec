class AdminController < ApplicationController
	
	# before_filter :check_authentication, :except => [:form_entrada, :signin]
	
	def signin_form
	end
	
	def signin
		session[:user] = Usuario.authenticate(params[:username], params[:password]).id
		redirect_to :action => session[:intended_action]
	end
	
	def signout
		session[:user] = nil
		redirect_to inicio_url
	end

end
