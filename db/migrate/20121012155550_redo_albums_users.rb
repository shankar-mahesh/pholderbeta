class RedoAlbumsUsers < ActiveRecord::Migration
  def change
  	drop_table :album_users
  	create_table :users_albums, :id => false do |t|
	    t.integer :album_id
	    t.integer :user_id
	end
  end
end
