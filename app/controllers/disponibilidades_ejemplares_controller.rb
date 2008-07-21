class DisponibilidadesEjemplaresController < ApplicationController
	active_scaffold :disponibilidad_ejemplar
	
	active_scaffold :disponibilidad_ejemplar do |config|
		config.label = "Disponibilidades de Ejemplar"
		config.columns = [:nombre, :descripcion]
		list.sorting = {:nombre => 'ASC'}
	end

end
