class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create

  belongs_to :profile
  
  attr_accessible :email, :password, :password_confirmation, :profile_id
end
