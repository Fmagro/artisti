class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :nome
      t.string :bio
      t.boolean :isgroup

      t.timestamps
    end
  end
end
