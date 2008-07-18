class UsuariosController < ApplicationController
	layout "standar"
	
	active_scaffold :usuario
	
	active_scaffold :usuario do |config|
		config.label = "Usuarios"
		config.columns = [:apellidos, :nombres, :tipo_doc, :documento,  :direccion, :ciudad, 
											:telefono_1, :telefono_2, :movil, :email, :perfil, :username, :password, 
											:password_confirmation]
		list.columns.exclude 	:direccion, :ciudad, :telefono_1, :telefono_2, :password,
													:password_confirmation, :perfil
		list.sorting = {:apellidos => 'ASC'}
		
		config.columns[:tipo_doc].form_ui = :select
		config.columns[:ciudad].form_ui = :select
		config.columns[:perfil].form_ui = :select
		config.columns[:password].label = "Contrase&ntilde;a"
		config.columns[:password_confirmation].label = "Confirmaci&oacute;n contrase&ntilde;a"
	end
	
	# def check_authentication
		# unless session[:user]
		# session[:intended_action] = action_name
			# redirect_to(:controller => "admin", :action => "form_entrada")
		# end
	# end
	
	def bienvenida
	end
end
