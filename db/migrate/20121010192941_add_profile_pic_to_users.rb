class AddProfilePicToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :profilepic_file_name, :string
  	add_column :users, :profilepic_content_type, :string
  	add_column :users, :profilepic_file_size, :integer
  	add_column :users, :profilepic_updated_at, :datetime
  end
end
