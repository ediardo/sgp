json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :num_cliente, :nombres, :apellidos, :telefono, :direccion, :email
  json.url cliente_url(cliente, format: :json)
end
