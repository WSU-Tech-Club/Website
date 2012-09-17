class Member < ActiveRecord::Base
  has_many :teams
  has_many :projects, :through => :teams
  has_many :leads, :class_name => "Projects", :foreign_key => "project_lead"

  has_secure_password
  validates_presence_of :password, :on => :create

  attr_accessible :active, :email, :first_name, :github_access_token, :github_profile, :last_name, :major, :skills, :project_ids, :password, :password_confirmation
  def full_name 
    [first_name, last_name].join(' ')
  end

  def skill_tags
    skills.split(/[,;]/).each { |skill| skill.strip! }
  end  
end
