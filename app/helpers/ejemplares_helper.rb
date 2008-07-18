module EjemplaresHelper
	
	def costo_dia_column(record)
		number_to_currency(h(record.costo_dia))
	end
	
	def costo_compra_column(record)
		number_to_currency(h(record.costo_compra))
	end
	
end
