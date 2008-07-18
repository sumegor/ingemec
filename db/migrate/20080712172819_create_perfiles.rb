class CreatePerfiles < ActiveRecord::Migration
  def self.up
    create_table :perfiles do |t|
			t.string :nombre, :null => false
			t.string :descripcion, :null => false
			
			t.timestamps
    end
  end

  def self.down
    drop_table :perfiles
  end
end
