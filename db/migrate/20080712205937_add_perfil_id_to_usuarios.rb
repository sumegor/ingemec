class AddPerfilIdToUsuarios < ActiveRecord::Migration
  def self.up
		add_column :usuarios, :perfil_id, :integer, :null => false
  end

  def self.down
		remove_column :usuarios, :perfil_id
  end
end
