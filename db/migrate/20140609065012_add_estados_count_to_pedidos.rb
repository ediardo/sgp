class AddEstadosCountToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :estados_count, :integer
  end
end
