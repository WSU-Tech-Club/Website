class Project < ActiveRecord::Base
  has_many  :teams
  has_many :members, :class_name => "Profile",  :through => :teams

  belongs_to :lead, :class_name => "Profile", :foreign_key => "member_lead"

  attr_accessible :github_repo, :member_lead, :readme_file, :title
end
