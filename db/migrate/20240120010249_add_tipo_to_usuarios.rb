class AddTipoToUsuarios < ActiveRecord::Migration[7.1]
  def change
    add_column :usuarios, :tipo, :integer
  end
end
