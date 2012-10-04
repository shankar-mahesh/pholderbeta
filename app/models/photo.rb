class Photo < ActiveRecord::Base
  attr_accessible :avatar
  belongs_to :album

  has_attached_file :avatar, :styles => { :small => "150x150>", :medium => "300x300>"},
              		:url  => "/assets/photos/:id/:style/:basename.:extension",
              		:path => ":rails_root/public/assets/photos/:id/:style/:basename.:extension"

  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/png', 'image/gif']

end
