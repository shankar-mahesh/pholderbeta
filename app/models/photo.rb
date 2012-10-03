class Photo < ActiveRecord::Base
  attr_accessible :avatar
  belongs_to :album

  has_attached_file :avatar
end
