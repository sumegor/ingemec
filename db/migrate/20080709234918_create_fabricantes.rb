class CreateFabricantes < ActiveRecord::Migration
  def self.up
    create_table :fabricantes do |t|
			t.string	:nombre, :limit => 100, :null => false
			t.text		:descripcion, :null => true
			
			t.timestamps
    end
  end

  def self.down
    drop_table :fabricantes
  end
end
