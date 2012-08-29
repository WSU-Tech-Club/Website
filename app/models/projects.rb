class Projects < ActiveRecord::Base
  has_one  :team
  has_many :members, :through => :team

  belongs_to :lead, :class_name => "Member", :foreign_key => "member_lead"

  attr_accessible :github_repo, :member_lead, :readme_file, :title
end
