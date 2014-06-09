class AddCreatedByToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :created_by, :string
  end
end
