class AdminController < ApplicationController
	#layout "standar", :except => [ :login ]
	
	# before_filter :check_authentication, :except => [ :login]
	def login
		render(:layout => "login")
		session[:user_id] = nil
		if request.post?
			puts "Resultado authenticate:  " + Usuario.authenticate(params[:username], params[:password]).to_s
			if Usuario.authenticate(params[:username], params[:password])
				session[:user] = Usuario.find(:first, :conditions => [' username = ?' , params[:username]])
				
				unless session[:intended_controller].nil? && session[:intended_action].nil?
					#puts session[:intended_controller] + " " + session[:intended_action]
					redirect_to :controller => session[:intended_controller], :action => session[:intended_action]
				else
					redirect_to :controller => "inicio", :action => "index"
				end
			else
				flash[:notice] = "Nombre de usuario o contrase&ntilde;a inv&aacute;lidos"
			end
		end
	end
	
	def logout
		session[:user] = nil
		session[:intended_controller] = nil
		session[:intended_action] = nil
		redirect_to home_url #:controller => "admin", :action => "login"
	end
	
	def cambiar_password
		# render(:layout => "application")
		if request.post?
			puts "+++++++++ Cambiando password:  #{params[:password]} #{params[:nuevo_password]} #{params[:nuevo_password_conrfirmation]}"
			# if Usuario.authenticate(params[:username], params[:password])
				# session[:user] = Usuario.find(:first, :conditions => [' username = ?' , params[:username]])
				
				# unless session[:intended_controller].nil? && session[:intended_action].nil?
					###puts session[:intended_controller] + " " + session[:intended_action]
					# redirect_to :controller => session[:intended_controller], :action => session[:intended_action]
				# else
					# redirect_to :controller => "inicio", :action => "index"
				# end
			# else
				# flash[:notice] = "Nombre de usuario o contrase&ntilde;a inv&aacute;lidos"
			# end
		end
	end

end
