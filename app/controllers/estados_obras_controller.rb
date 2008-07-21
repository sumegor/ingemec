class EstadosObrasController < ApplicationController
	active_scaffold :estado_obra
	
	active_scaffold :estado_obra do |config|
		config.label = "Estados de Obra"
		config.columns = [:nombre, :descripcion]
		list.sorting = {:nombre => 'ASC'}
	end

end
