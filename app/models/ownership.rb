class Ownership < ActiveRecord::Base
  attr_accessible :album_id, :user_id, :status
  belongs_to :album
  belongs_to :user
end
