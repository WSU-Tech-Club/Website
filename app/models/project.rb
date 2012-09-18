class Project < ActiveRecord::Base
  has_many  :teams
  has_many :developers, :class_name => "Profile",  :through => :teams

  belongs_to :lead, :class_name => "Profile", :foreign_key => "developer_lead"

  attr_accessible :github_repo, :developer_lead, :readme_file, :title
end
