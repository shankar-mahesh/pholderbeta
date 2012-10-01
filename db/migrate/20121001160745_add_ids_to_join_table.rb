class AddIdsToJoinTable < ActiveRecord::Migration
  def change
  	add_column :user_albums, :user_id, :integer
  	add_column :user_albums, :album_id, :integer
  end
end
