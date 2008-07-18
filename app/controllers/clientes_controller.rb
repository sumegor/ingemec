class ClientesController < ApplicationController
	layout "standar"
	
	active_scaffold :cliente
	
	active_scaffold :cliente do |config|
		config.label = "Clientes"
		config.columns = [:referencia, :nombre, :descripcion, :cantidad]
		list.columns.exclude :cantidad
		list.sorting = {:nombre => 'ASC'}
	end
	
end
