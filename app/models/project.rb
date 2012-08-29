class Project < ActiveRecord::Base
  has_many  :teams
  has_many :members, :through => :teams

  belongs_to :lead, :class_name => "Member", :foreign_key => "member_lead"

  attr_accessible :github_repo, :member_lead, :readme_file, :title
end
