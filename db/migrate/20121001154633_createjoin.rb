class Createjoin < ActiveRecord::Migration
  def change
  	if (!ActiveRecord::Base.connection.tables.include?("user_albums"))
	    create_table :user_albums, :id => false do |t|

	      t.integer :album_id
	      t.integer :user_id
	      
	      t.timestamps
	  end
    end
  end
end
