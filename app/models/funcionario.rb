class Funcionario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :setor
  belongs_to :cargo
  belongs_to :secretaria
  belongs_to :unidade

  validates :nome, presence: true
  validates :cpf, presence: true, uniqueness: true
  validates :rg, presence: true
  validates :telefone, presence: true
end
