class CreatePrivilegios < ActiveRecord::Migration
	def self.up
		create_table :privilegios do |t|
			t.string :nombre, :null => false
			t.string :nombre_menu, :null => false
			t.string :descripcion, :null => false
			t.string :controller, :null => false
			t.string :action, :null => false
		end
	end

	def self.down
		drop_table :privilegios
	end
end
