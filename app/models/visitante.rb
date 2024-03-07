class Visitante < ApplicationRecord
  has_many :visitas
  mount_uploader :foto, FotoUploader
  validates :cpf, presence: true, uniqueness: true
end
