require 'spec_helper'

describe Project do
  it "can be instantiated" do
    Project.new.should be_an_instance_of(Project)
  end

  it "can be saved successfully" do
    Project.create.should be_persisted
  end
end

