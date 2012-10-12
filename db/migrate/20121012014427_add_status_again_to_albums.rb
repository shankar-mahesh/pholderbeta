class AddStatusAgainToAlbums < ActiveRecord::Migration
  def change
  	add_column :albums, :status, :string
  	remove_column :album_users, :status
  end
end
