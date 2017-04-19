class CreateBands < ActiveRecord::Migration[5.0]
  def change
    create_table :bands do |t|
      t.references :individual, foreign_key: true
      t.references :group, foreign_key: true
      t.date :creation
      t.date :disbanding

      t.timestamps
    end
  end
end
