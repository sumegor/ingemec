class CiudadesController < ApplicationController
	layout "standar"
	
	active_scaffold :ciudad
	
	active_scaffold :ciudad do |config|
		config.label = "Ciudades"
		config.columns = [:nombre, :departamento]
		list.sorting = {:nombre => 'ASC'}
	end
	
end
