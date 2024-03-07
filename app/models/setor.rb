class Setor < ApplicationRecord
  belongs_to :unidade
  belongs_to :secretaria
  has_many :funcionarios
end
