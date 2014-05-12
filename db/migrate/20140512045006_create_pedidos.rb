class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :num_pedido
      t.text :descripcion
      t.boolean :finalizado
      t.references :cliente, index: true

      t.timestamps
    end
  end
end
