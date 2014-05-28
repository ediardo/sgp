class Cliente < ActiveRecord::Base
  validates :num_cliente, uniqueness: true
  validates_format_of :num_cliente, :with => /\A[A-Za-z]{4}[ |\-]{0,1}[0-9]{6}[ |\-]{0,1}[0-9A-Za-z]{3}\z/i
  validates :num_cliente, :nombres, :apellidos, :email, :direccion, presence: true 
  validates :nombres, :apellidos, length: {in: 2..30}
  validates :telefono, numericality: true  
end
