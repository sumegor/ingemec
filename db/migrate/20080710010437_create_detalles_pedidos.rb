class CreateDetallesPedidos < ActiveRecord::Migration
  def self.up
    create_table :detalles_pedidos do |t|
			t.timestamp :fecha_entrada, :null => false
			t.text :observaciones, :null => false
			
			#LLAVES FORANEAS
			t.integer :pedido_id, :null => false
			t.integer :ejemplar_id, :null => false
				
			t.timestamps
    end
  end

  def self.down
    drop_table :detalles_pedidos
  end
end
