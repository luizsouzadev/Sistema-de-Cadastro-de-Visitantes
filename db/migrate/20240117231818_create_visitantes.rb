class CreateVisitantes < ActiveRecord::Migration[7.1]
  def change
    create_table :visitantes do |t|
      t.string :nome
      t.string :cpf
      t.string :rg
      t.string :telefone
      t.string :foto

      t.timestamps
    end
  end
end
