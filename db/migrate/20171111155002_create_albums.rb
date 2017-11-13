class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :user_id
      t.boolean :public, default: false

      t.timestamps
    end
  end
end
