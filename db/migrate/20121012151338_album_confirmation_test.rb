class AlbumConfirmationTest < ActiveRecord::Migration
  def change
    add_column :album_users, :status, :string
  end
end
