class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name
      t.string :pictures
      t.integer :user_id
      t.string :avatar

      t.timestamps
    end
  end
end
