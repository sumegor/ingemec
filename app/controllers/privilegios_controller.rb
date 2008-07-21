class PrivilegiosController < ApplicationController
	
	active_scaffold :privilegio
	
	active_scaffold :privilegio do |config|
		config.columns = [	:nombre, :nombre_menu, :descripcion, :controller, :action, :visible_menu,
												:nivel_menu, :orden_menu]
		list.columns.exclude :descripcion
		
		config.columns[:descripcion].form_ui = :textarea
		config.columns[:descripcion].options = {:rows => 5, :cols => 40}
	end
	
end
