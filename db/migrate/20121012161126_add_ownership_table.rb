class AddOwnershipTable < ActiveRecord::Migration
  def change
  	drop_table :users_albums
  	create_table :ownerships, :id => false do |t|
	    t.integer :album_id
	    t.integer :user_id
	end
  end
end
