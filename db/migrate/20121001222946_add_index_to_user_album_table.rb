class AddIndexToUserAlbumTable < ActiveRecord::Migration
  def change
  	drop_table :user_albums
  	create_table :album_users do |t|
  	  t.integer :album_id
  	  t.integer :user_id

      t.timestamps
    end
  end
end
