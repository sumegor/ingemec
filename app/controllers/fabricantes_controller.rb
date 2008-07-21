class FabricantesController < ApplicationController
	
	active_scaffold :fabricante
	
	active_scaffold :fabricante do |config|
		config.label = "Fabricantes"
		config.columns = [:nombre, :descripcion]
		list.sorting = {:nombre => 'ASC'}
		
	end
	
end
