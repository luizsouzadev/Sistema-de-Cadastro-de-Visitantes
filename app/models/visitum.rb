class Visitum < ApplicationRecord
  belongs_to :visitante
  belongs_to :funcionario
  belongs_to :setor

  validates :data_hora, :setor, presence: true
end
