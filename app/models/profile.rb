# == Schema Information
#
# Table name: profiles
#
#  id                  :integer          not null, primary key
#  first_name          :string(255)
#  last_name           :string(255)
#  active              :boolean
#  github_profile      :string(255)
#  major               :string(255)
#  skills              :text
#  github_access_token :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Profile < ActiveRecord::Base
  has_one :user
  has_one :profile_claim
  
  has_many :teams, :foreign_key => "developer_id"
  has_many :projects, :class_name => "Project", :through => :teams
  has_many :leads, :class_name => "Projects"
  
  attr_accessible :active, :first_name, :github_access_token, :github_profile, :last_name, :major, :skills
  
  def full_name
    [self.first_name, self.last_name].join(' ')
  end

  def skill_tags
    skills.split(/[,;]/).each { |skill| skill.strip! }
  end  
end
