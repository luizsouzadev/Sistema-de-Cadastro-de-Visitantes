class AddUnidadeToSetor < ActiveRecord::Migration[7.1]
  def change
    add_reference :setors, :unidade, null: false, foreign_key: true
  end
end
