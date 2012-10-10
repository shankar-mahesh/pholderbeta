class Album < ActiveRecord::Base
  attr_accessible :name, :description, :user_ids
  validates_presence_of :name

  validates :user, :uniqueness => true

  has_many :album_users
  has_many :users, :through => :album_users
  has_many :photos

end
