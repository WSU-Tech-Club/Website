class Profile < ActiveRecord::Base
  has_one :user
  has_one :profile_claim
  
  has_many :teams
  has_many :projects, :through => :teams
  has_many :leads, :class_name => "Projects", :foreign_key => "project_lead"
  
  attr_accessible :active, :first_name, :github_access_token, :github_profile, :last_name, :major, :skills
  
  def full_name
    [self.first_name, self.last_name].join(' ')
  end

  def skill_tags
    skills.split(/[,;]/).each { |skill| skill.strip! }
  end  
end
