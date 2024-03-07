class Cargo < ApplicationRecord
  has_many :funcionarios
  has_many :usuarios
end
