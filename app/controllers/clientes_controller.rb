class ClientesController < ApplicationController
	
	active_scaffold :cliente
	
	active_scaffold :cliente do |config|
		config.label = "Clientes"
		config.columns = [:nombre, :email, :direccion, :telefono_1, :telefono_2, :fax]
		list.columns.exclude :telefono_2
		list.sorting = {:nombre => 'ASC'}
	end
	
end
