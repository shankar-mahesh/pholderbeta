class RemovePicturesFromAlbums < ActiveRecord::Migration
  def up
  	remove_column :albums, :pictures
  	remove_column :albums, :avatar
  end

  def down
  end
end
