class InicioController < ApplicationController
	layout "standar"
	# skip_before_filter :check_authentication, :check_authorization

	def index
		#render :text => "Una pagina que no necesita derechos"
	end
end
