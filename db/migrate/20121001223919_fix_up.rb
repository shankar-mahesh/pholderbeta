class FixUp < ActiveRecord::Migration
  def up
  	drop_table :album_users
  	create_table :album_users, :id => false do |t|
  	  t.integer :album_id
  	  t.integer :user_id

      t.timestamps
    end
  end

  def down
  end
end
