class Secretaria < ApplicationRecord
  has_many :unidades
  has_many :funcionarios
end
