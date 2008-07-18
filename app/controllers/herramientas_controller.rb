class HerramientasController < ApplicationController
	layout "standar"
	
	active_scaffold :herramienta
	
	active_scaffold :herramienta do |config|
		config.label = "Herramientas"
		config.columns = [:referencia, :nombre, :descripcion]

		list.sorting = {:nombre => 'ASC'}
		
		config.columns[:ejemplares].form_ui = :select
		config.columns[:descripcion].form_ui = :textarea
		config.columns[:descripcion].options = {:rows => 5, :cols => 40}
		
		config.nested.add_link("Ejemplares", [:ejemplares])
	
		config.list.columns = [:referencia, :nombre, :cantidad]
	end
	
end
