module InicioHelper
	
	def	menu_item_tag(privilegio)
		link = link_to "#{privilegio.nombre_menu}", {:controller => "#{privilegio.controller}", :action => "#{privilegio.action}"	}
		div_img = "<div class=\"img_item_#{privilegio.controller}\"></div>"
		
		cadena = case privilegio.nivel_menu
			when 1 : "<li class=\"first_level\"> #{div_img} #{link} </li> "	
			when 2 : "<li class=\"second_level\"> #{link} </li> "	
		end
		
		session[:navi] = cadena
			
		return cadena
	end
	
	def	cambio_password_item_tag
		link = link_to "Cambiar contrase&ntilde;a", {:controller => "admin", :action => "cambiar_password"	}
		div_img = "<div class=\"img_item_cambio_contrasena\"></div>"
		
		cadena = "<li class=\"first_level\"> #{div_img} #{link} </li> "	
		
		return cadena
	end
	
end
