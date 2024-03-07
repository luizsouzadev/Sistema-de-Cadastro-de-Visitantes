class CreateVisita < ActiveRecord::Migration[7.1]
  def change
    create_table :visitas do |t|
      t.references :visitante, null: false, foreign_key: true
      t.references :funcionario, null: false, foreign_key: true
      t.references :setor, null: false, foreign_key: true
      t.datetime :data_hora

      t.timestamps
    end
  end
end
