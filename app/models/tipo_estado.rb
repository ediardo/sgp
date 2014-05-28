class TipoEstado < ActiveRecord::Base
  validates :nombre, presence: true
end
