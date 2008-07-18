class ModifyEjemplares < ActiveRecord::Migration
  def self.up
		rename_column :ejemplares, :vida_util, :vida_util_anhos
	end

  def self.down
		rename_column :ejemplares, :vida_util_anhos, :vida_util
  end
end
