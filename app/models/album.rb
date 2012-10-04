class Album < ActiveRecord::Base
  attr_accessible :name, :description
  validates_presence_of :name

  has_many :album_users
  has_many :users, :through => :album_user
  has_many :photos

end
