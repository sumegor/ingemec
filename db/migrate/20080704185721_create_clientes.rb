class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
    	t.string :nombre, :limit => 150, :null => false
			t.string :direccion, :limit => 150, :null => false
			t.string :telefono_1, :limit => 15, :null => false
			t.string :telefono_2, :limit => 15, :null => true
			t.string :fax, :limit => 15, :null => true
			t.string :email, :limit => 100, :null => false
			
			#LLAVES FORANEAS
			t.integer :ciudad_id, :null => true
			
      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
