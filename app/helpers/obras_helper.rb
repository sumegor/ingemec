module ObrasHelper

	def fecha_inicio_column(record)
		record.fecha_inicio.to_s(:fecha_corta)
	end
	
	def fecha_fin_column(record)
		record.fecha_fin.to_s(:fecha_corta)
	end
end
