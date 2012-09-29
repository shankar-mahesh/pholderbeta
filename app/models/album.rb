class Album < ActiveRecord::Base
  attr_accessible :avatar, :name, :description
  has_and_belongs_to_many :users
  has_many :photos
end
