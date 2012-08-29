class Member < ActiveRecord::Base
  has_many :teams
  has_many :projects, :through => :teams
  has_many :leads, :class_name => "Projects", :foreign_key => "project_lead"

  attr_accessible :active, :email, :first_name, :github_access_token, :github_profile, :last_name, :major, :skills, :projects
end
