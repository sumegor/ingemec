class PaisesController < ApplicationController
	
	active_scaffold :pais 
	
	active_scaffold :pais do |config|
		config.label = "Pa&iacute;ses"
		config.columns = [:nombre, :iso]
		list.sorting = {:nombre => 'ASC'}
	end
end
