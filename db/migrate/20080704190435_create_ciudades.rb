class CreateCiudades < ActiveRecord::Migration
  def self.up
    create_table :ciudades do |t|
			t.string :nombre, :null => false
			
			#LLAVES FORANEAS
			t.integer :departamento_id, :null => true
			
      t.timestamps
    end
  end

  def self.down
    drop_table :ciudades
  end
end
