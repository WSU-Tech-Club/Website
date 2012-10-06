# == Schema Information
#
# Table name: teams
#
#  developer_id :integer
#  project_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Team < ActiveRecord::Base
  belongs_to :developer, :class_name => "Profile"
  belongs_to :project

  attr_accessible :developer_id, :project_id
end
