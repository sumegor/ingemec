class PrivilegiosController < ApplicationController
	layout "standar"
	
	active_scaffold :privilegio
	
	active_scaffold :privilegio do |config|
		config.columns = [:nombre, :visible_menu, :nombre_menu, :descripcion, :controller, :action]
		list.columns.exclude :descripcion
		
		config.columns[:descripcion].form_ui = :textarea
		config.columns[:descripcion].options = {:rows => 5, :cols => 40}
	end
	
end
