class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :artists, :nome, :name
  end
end
