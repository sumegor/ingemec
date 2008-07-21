class InicioController < ApplicationController
	layout "standar"
	# skip_before_filter :check_authentication, :check_authorization

	def index
		@privilegios = Usuario.find(session[:user].id).perfil.privilegios.find(:all, :conditions => ["visible_menu = true and orden_menu < 99"], :order => "orden_menu ASC" )
	end
end
