class EjemplaresController < ApplicationController
	
	active_scaffold :ejemplar
	
	active_scaffold :ejemplar do |config|
		config.label = "Ejemplares"
		config.columns = [:herramienta, :codigo, :fabricante, :descripcion, :disponibilidad_ejemplar, :vida_util_anhos, 
											:fecha_compra, :costo_compra, :costo_dia, :estado_ejemplar]
		
		config.columns[:herramienta].form_ui = :select
		config.columns[:fabricante].form_ui = :select
		config.columns[:disponibilidad_ejemplar].form_ui = :select
		config.columns[:estado_ejemplar].form_ui = :select
		config.columns[:descripcion].form_ui = :textarea
		config.columns[:descripcion].options = {:rows => 5, :cols => 40}
		
		list.columns.exclude :fecha_compra, :costo_compra, :fabricante, :estado
		list.sorting = {:herramienta => 'ASC'}
		
	end
end

