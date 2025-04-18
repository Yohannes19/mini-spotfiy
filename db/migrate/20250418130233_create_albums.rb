class CreateAlbums < ActiveRecord::Migration[7.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.date :released_on
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
