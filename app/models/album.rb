class Album < ActiveRecord::Base
  attr_accessible :name, :description, :user_ids, :status
  validates_presence_of :name

  has_many :ownerships
  has_many :users, :through => :ownerships
  has_many :photos

end
