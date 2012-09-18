class Team < ActiveRecord::Base
  belongs_to :developer, :class_name => "Profile"
  belongs_to :project

  attr_accessible :developer_id, :project_id
end
