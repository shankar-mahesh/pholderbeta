class AddFileNameToAlbum < ActiveRecord::Migration
  def change
  	add_column :albums, :avatar_file_name, :string
  	add_column :albums, :avatar_content_type, :string
  	add_column :albums, :avatar_file_size, :integer
  	add_column :albums, :avatar_updated_at, :datetime
  end
end
