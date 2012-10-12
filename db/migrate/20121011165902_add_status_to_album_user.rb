class AddStatusToAlbumUser < ActiveRecord::Migration
  def change
  	add_column :album_users, :status, :string
  	remove_column :albums, :status
  end
end
