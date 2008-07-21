class UsuariosController < ApplicationController
	#layout "standar"
	
	active_scaffold :usuario
	
	active_scaffold :usuario do |config|
		config.label = "Usuarios"
		config.columns = [:apellidos, :nombres, :tipo_doc, :documento,  :direccion, :ciudad, 
											:telefono_1, :telefono_2, :movil, :email, :username, :perfil, 
											:password, :password_confirmation
											]
		list.columns.exclude 	:direccion, :ciudad, :telefono_1, :telefono_2, 
													:password, :password_confirmation, 
													:movil, :tipo_doc, :documento
		update.columns.exclude :password, :password_confirmation
		show.columns.exclude :password, :password_confirmation
		
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
