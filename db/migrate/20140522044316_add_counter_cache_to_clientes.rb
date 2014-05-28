class AddCounterCacheToClientes < ActiveRecord::Migration
  def up
    add_column :clientes, :pedidos_count, :integer, :default => 0 
  end
end
