class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
	  t.string :avatar_file_name, :string
	  t.string :avatar_content_type, :string
	  t.integer :avatar_file_size, :integer
	  t.datetime :avatar_updated_at, :datetime

      t.timestamps
    end
  end
end
