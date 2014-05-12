json.array!(@estados) do |estado|
  json.extract! estado, :id, :nota, :tipo_estado_id, :pedido_id
  json.url estado_url(estado, format: :json)
end
