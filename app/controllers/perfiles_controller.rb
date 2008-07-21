class PerfilesController < ApplicationController
	
	active_scaffold :perfil
	
	active_scaffold :perfil do |config|
		config.columns = [:nombre, :descripcion, :privilegios]
		config.columns[:privilegios].form_ui = :select
		
		config.columns[:descripcion].form_ui = :textarea
		config.columns[:descripcion].options = {:rows => 5, :cols => 40}
		
	end
	
	
	
end
