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

require 'spec_helper'

describe Project do
  it "can be instantiated" do
    Project.new.should be_an_instance_of(Project)
  end

  it "can be saved successfully" do
    Project.create.should be_persisted
  end
end

