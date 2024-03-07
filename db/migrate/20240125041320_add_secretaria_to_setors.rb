class AddSecretariaToSetors < ActiveRecord::Migration[6.0]
  def change
    add_reference(:setors, :secretaria, foreign_key: true)
  end
end
