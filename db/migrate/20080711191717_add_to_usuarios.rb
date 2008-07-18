class AddToUsuarios < ActiveRecord::Migration
  def self.up
		add_column :usuarios, :password_salt, :string
		add_column :usuarios, :password_hash, :string
		remove_column :usuarios, :password
  end

  def self.down
		remove_column :usuarios, :password_salt, :string
		remove_column :usuarios, :password_hash, :string
		add_column :usuarios, :password, :limit => 20, :null => false
  end
end
