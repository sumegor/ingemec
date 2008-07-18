class CreatePedidos < ActiveRecord::Migration
  def self.up
    create_table :pedidos do |t|
			t.timestamp :fecha_pedido, :null => false
			
			#LLAVES FORANEAS
			t.integer :obra_id, :null => false
			
			t.timestamps
    end
  end

  def self.down
    drop_table :pedidos
  end
end
