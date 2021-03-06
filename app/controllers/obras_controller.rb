class ObrasController < ApplicationController
	
	active_scaffold :obra
	
	active_scaffold :obra do |config|
		config.columns = [:nombre, :descripcion, :direccion, :ciudad, :estado_obra, :fecha_inicio, :fecha_fin, :cliente, :usuario]
		list.columns.exclude :descripcion, :direccion, :ciudad
		list.sorting = {:nombre => 'ASC'}
		
		config.columns[:ciudad].form_ui = :select
		config.columns[:cliente].form_ui = :select
		config.columns[:usuario].form_ui = :select
		config.columns[:estado_obra].form_ui = :select
		config.columns[:descripcion].form_ui = :textarea
		config.columns[:descripcion].options = {:rows => 5, :cols => 40}
		config.columns[:nombre].options = {:size => 40}
	end
	
end
