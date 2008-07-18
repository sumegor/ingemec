class DepartamentosController < ApplicationController
	layout "standar"
	
	active_scaffold :departamento
	
	active_scaffold :departamento do |config|
		config.label = "Departamentos"
		config.columns = [:nombre, :pais]
		list.sorting = {:nombre => 'ASC'}
	end
	
end
