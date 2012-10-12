class AddStatusToOwnerships < ActiveRecord::Migration
  def change
  	add_column :ownerships, :status, :string
  end
end
