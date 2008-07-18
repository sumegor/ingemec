class CreateEjemplares < ActiveRecord::Migration
  def self.up
    create_table :ejemplares do |t|
			t.timestamp	:fecha_compra, :null => false
			t.integer		:vida_util, :null => false
			t.decimal		:costo_compra, :precision => 11, :scale => 2, :null => false
			t.decimal		:costo_dia, :precision => 11, :scale => 2, :null => false
			t.text			:descripcion, :null => false
			t.string		:estado, :null => false
			t.string		:disponibilidad, :null => false
			
			#LLAVES FORANEAS
			t.integer		:herramienta_id, :null => false
			t.integer		:fabricante_id, :null => false
			
			t.timestamps
    end
  end

  def self.down
    drop_table :ejemplares
  end
end
