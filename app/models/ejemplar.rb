class Ejemplar < ActiveRecord::Base
	belongs_to :herramienta
	belongs_to :fabricante
	
	validates_presence_of	:fecha_compra, :costo_compra, :vida_util_anhos, :costo_dia,
												:estado, :codigo

	def name
		"#{codigo}"
	end
	
end
