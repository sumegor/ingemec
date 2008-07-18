class AdminController < ApplicationController
	
	before_filter :check_authentication, :except => [:form_entrada, :signin]
	
	def form_entrada
	end
	
	def check_authentication
		unless session[:user]
			session[:intended_action] = action_name
			redirect_to :action => "form_entrada"
		end
	end
	
	def signin
		session[:user] = Usuario.authenticate(params[:username], params[:password]).id
		redirect_to :action => session[:intended_action]
	end
	
	# def signout
		# session[:user] = nil
		# redirect_to home_url
	# end
		
	def index
	end
end
