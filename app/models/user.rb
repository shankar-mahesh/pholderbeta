class User < ActiveRecord::Base
  
  has_secure_password
  attr_accessible :email, :name, :password, :password_confirmation
  validates_presence_of :password, :on => :create

  validates_format_of :name, :with => /[A-Za-z]+/, :on => :create
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_length_of :password, :minimum => 5, :on => :create

  has_many :album_users
  has_many :albums, :through => :album_users
  accepts_nested_attributes_for :albums

  has_many :friends

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
