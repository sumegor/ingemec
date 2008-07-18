class CreateHerramientas < ActiveRecord::Migration
  def self.up
    create_table :herramientas do |t|
			t.string :nombre, :null => false
			t.text :descripcion, :null => false
			t.string :referencia, :limit => 40, :null => false
			t.integer :cantidad, :null => false
			
			t.timestamps
    end
  end

  def self.down
    drop_table :herramientas
  end
end
