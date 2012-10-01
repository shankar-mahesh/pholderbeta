class RemoveUserIdsFromPhotosTable < ActiveRecord::Migration
  def up
  	remove_column :albums, :user_id
  	remove_column :users, :album_id
  end

  def down
  end
end
