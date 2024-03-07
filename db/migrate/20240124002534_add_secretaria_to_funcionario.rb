class AddSecretariaToFuncionario < ActiveRecord::Migration[7.1]
  def change
    add_reference :funcionarios, :secretaria, null: false, foreign_key: true
  end
end
