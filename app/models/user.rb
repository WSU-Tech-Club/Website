# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  profile_id      :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create

  belongs_to :profile
  
  attr_accessible :email, :password, :password_confirmation, :profile_id
end
