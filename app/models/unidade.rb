class Unidade < ApplicationRecord
  belongs_to :secretaria
  has_many :funcionarios
end
