class AddUpdatedByToPedidos < ActiveRecord::Migration
  def change
    add_column :pedidos, :updated_by, :string
  end
end
