class Album < ActiveRecord::Base
  attr_accessible :avatar, :name, :description
  has_many :album_user
  has_many :users, :through => :album_user
  has_many :photos
end
