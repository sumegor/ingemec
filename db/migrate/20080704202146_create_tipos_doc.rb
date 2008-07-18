class CreateTiposDoc < ActiveRecord::Migration
  def self.up
    create_table :tipos_doc do |t|
			t.string :nombre, :limit => 50, :null => false
			t.string :descripcion, :null => true
			
      t.timestamps
    end
  end

  def self.down
    drop_table :tipos_doc
  end
end
