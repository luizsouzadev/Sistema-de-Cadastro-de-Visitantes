class CreateSecretarias < ActiveRecord::Migration[7.1]
  def change
    create_table :secretarias do |t|
      t.string :nome

      t.timestamps
    end
  end
end
