class CreatePaises < ActiveRecord::Migration
  def self.up
    create_table :paises do |t|
			t.string :nombre, :null => false
			t.string :iso, :null => true
			
      t.timestamps
    end
  end

  def self.down
    drop_table :paises
  end
end
