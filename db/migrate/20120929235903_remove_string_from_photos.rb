class RemoveStringFromPhotos < ActiveRecord::Migration
  def up
  	remove_column :photos, :integer
  	remove_column :photos, :string 
  	remove_column :photos, :datetime
  end

  def down
  end
end
