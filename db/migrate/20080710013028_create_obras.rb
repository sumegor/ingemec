class CreateObras < ActiveRecord::Migration
  def self.up
    create_table :obras do |t|

			t.string 		:nombre,  :null => false #255 de largo
			t.text			:descripcion, :null => false
			t.string		:direccion, :null => false
			t.string		:estado, :null => false
			t.timestamp	:fecha_inicio, :null => false
			t.timestamp	:fecha_fin, :null => false
			
			#LLAVES FORANEAS
			t.integer :tipo_obra_id, :null => false
			t.integer :ciudad_id, :null => false #false
			t.integer :usaurio_id, :null => false #Ingeniero encargado
			t.integer :cliente_id, :null => false
			
			t.timestamps
    end
  end

  def self.down
    drop_table :obras
  end
end
