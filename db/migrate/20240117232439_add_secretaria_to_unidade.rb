class AddSecretariaToUnidade < ActiveRecord::Migration[7.1]
  def change
    add_reference :unidades, :secretaria, null: false, foreign_key: true
  end
end
