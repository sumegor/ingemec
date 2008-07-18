class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :nombres, :limit => 60, :null => false
			t.string :apellidos, :limit => 60, :null => false
			t.string :documento, :limit => 40, :null => false
			t.string :direccion, :limit => 100, :null => false
			t.string :telefono_1, :limit => 15, :null => false
			t.string :telefono_2, :limit => 15, :null => true
			t.string :movil, :limit => 15, :null => true
			t.string :email, :limit => 60, :null => false
			t.string :password, :limit => 20, :null => false
			t.string :username, :limit => 20, :null => false
			
			#LLAVES FORANEAS
			t.integer :tipo_doc_id, :null => true
			t.integer :ciudad_id, :null => true
			
      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
