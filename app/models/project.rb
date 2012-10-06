# == Schema Information
#
# Table name: projects
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  developer_lead :integer
#  github_repo    :string(255)
#  readme_file    :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Project < ActiveRecord::Base
  has_many  :teams
  has_many :developers, :class_name => "Profile", :through => :teams
  
  belongs_to :lead, :class_name => "Profile", :foreign_key => "developer_lead"

  attr_accessible :github_repo, :developer_lead, :readme_file, :title
end
