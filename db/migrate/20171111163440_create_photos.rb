class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :name
      t.string :image
      t.string :album_id
      t.boolean :public, default: false

      t.timestamps
    end
  end
end
