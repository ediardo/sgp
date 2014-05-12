json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :num_pedido, :descripcion, :finalizado, :cliente_id
  json.url pedido_url(pedido, format: :json)
end
