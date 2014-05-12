json.array!(@tipo_estados) do |tipo_estado|
  json.extract! tipo_estado, :id, :nombre, :descripcion
  json.url tipo_estado_url(tipo_estado, format: :json)
end
