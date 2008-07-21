class Ejemplar < ActiveRecord::Base
	belongs_to :herramienta
	belongs_to :fabricante
	belongs_to :estado_ejemplar
	belongs_to :disponibilidad_ejemplar
	
	validates_presence_of	:fecha_compra, :costo_compra, :vida_util_anhos, :costo_dia, :codigo

	def name
		"#{codigo}"
	end
	
end
