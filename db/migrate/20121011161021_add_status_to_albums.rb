class AddStatusToAlbums < ActiveRecord::Migration
  def change
  	add_column :albums, :status, :string
  end
end
