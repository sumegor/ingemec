class UsuariosController < ApplicationController
	#layout "standar"
	
	active_scaffold :usuario
	
	active_scaffold :usuario do |config|
		config.label = "Usuarios"
		config.columns = [:apellidos, :nombres, :tipo_doc, :documento,  :direccion, :ciudad, 
											:telefono_1, :telefono_2, :movil, :email, :username, :perfil, :password, 
											:password_confirmation]
		list.columns.exclude 	:direccion, :ciudad, :telefono_1, :telefono_2, :password,
													:password_confirmation, :movil, :tipo_doc, :documento
		update.columns.exclude :password, :password_confirmation
		config.columns[:password].required = true
		config.columns[:password_confirmation].required = true
		list.sorting = [{:apellidos => 'ASC'}, {:nombres => 'ASC'}]
		
		config.columns[:tipo_doc].form_ui = :select
		config.columns[:ciudad].form_ui = :select
		config.columns[:perfil].form_ui = :select
		config.columns[:password].label = "Contrase&ntilde;a"
		config.columns[:password_confirmation].label = "Confirmaci&oacute;n contrase&ntilde;a"
	end
	
	def bienvenida
	end
	
	protected
  # only authenticated users are authorized to create records
  def create_authorized?
   user = Usuario.find(session[:user])
		# unless user.perfil.privilegios.detect{|right|
			# puts user.username + " - " + action_name + " vs "+ right.action + " - " + controller_name + " vs "+ right.controller
			# puts (right.action == action_name && right.controller == controller_name).to_s
			# right.action == action_name && right.controller == controller_name
			# }
			# flash[:notice] = "Usted no est&aacute; autorizado para ver la p&aacute;gina solicitada"
			# request.env["HTTP_REFERER"] ? (redirect_to :back) : (redirect_to home_url)
			# return false
		# end
		
		##puts "*********** Encontrado: " + user.perfil.privilegios.find(:all, :conditions => {:controller => controller_name, :action => action_name}).to_s
			
		es_administrador?
  end
	
	def read_authorized?
		es_administrador?
	end
	def update_authorized?
		es_administrador?
	end
	def destroy_authorized?
		es_administrador?
	end
	
	def es_administrador?
		 usuario = Usuario.find(session[:user])
		 usuario.perfil.nombre == "Administrador"
	end
	
end
