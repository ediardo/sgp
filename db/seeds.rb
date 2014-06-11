TipoEstado.create!([
  {nombre: "Inicializado", descripcion: "Cuando un pedido ha sido iniciado"},
  {nombre: "En progreso", descripcion: "Cuando un pedido está en progreso."},
  {nombre: "Cancelado", descripcion: "Cuando un pedido está cancelado."},
  {nombre: "Finalizado", descripcion: "Cuando un pedido ha finalizado."}
])
