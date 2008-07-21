module InicioHelper
	
	def	menu_item_tag(privilegio)
		link = link_to "#{privilegio.nombre_menu}", {:controller => "#{privilegio.controller}", :action => "#{privilegio.action}"	}
		div_img = "<div class=\"img_item_#{privilegio.controller}\"></div>"
		
		cadena = case privilegio.nivel_menu
			when 1 : "<li class=\"first_level\"> #{div_img} #{link} </li> "	
			when 2 : "<li class=\"second_level\"> #{link} </li> "	
		end
	end
	
end
