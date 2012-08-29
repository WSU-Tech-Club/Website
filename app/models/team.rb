class Team < ActiveRecord::Base
  belongs_to :member
  belongs_to :project

  attr_accessible :member_id, :project_id
end
