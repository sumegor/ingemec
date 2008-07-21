class TiposDocController < ApplicationController
	active_scaffold :tipos_doc
	
	active_scaffold :tipos_doc do |config|
		config.label = "Tipos de Documento de Identidad"
		config.columns = [:nombre, :descripcion]
		list.columns.exclude :direccion, :telefono_2, :password
    list.sorting = {:nombre => 'ASC'}
	end
	
	
	
end
