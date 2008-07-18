class PrivilegiosController < ApplicationController
	layout "standar"
	
	active_scaffold :privilegio
	
	active_scaffold :privilegio do |config|
		config.columns = [:nombre, :nombre_menu, :descripcion, :controller, :action]
		#config.columns[:perfiles].form_ui = select
		
		config.columns[:descripcion].form_ui = :textarea
		config.columns[:descripcion].options = {:rows => 5, :cols => 40}
	end
	
end
