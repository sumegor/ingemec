class EstadoEjemplaresController < ApplicationController

	active_scaffold :estado_ejemplar
	
	active_scaffold :estado_ejemplar do |config|
		config.label = "Estados de Ejemplar"
		config.columns = [:nombre, :descripcion]
		list.sorting = {:nombre => 'ASC'}
	end

end
