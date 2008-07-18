class CreatePrivilegiosPerfiles < ActiveRecord::Migration
  def self.up
		create_table :privilegios_perfiles, :id => false do |t|
			t.integer :privilegio_id
			t.integer :perfil_id
		end
  end

  def self.down
		drop_table :privilegios_perfiles
  end
end
