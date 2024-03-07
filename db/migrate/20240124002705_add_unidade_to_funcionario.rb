class AddUnidadeToFuncionario < ActiveRecord::Migration[7.1]
  def change
    add_reference :funcionarios, :unidade, null: false, foreign_key: true
  end
end
