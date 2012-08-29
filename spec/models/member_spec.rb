require 'spec_helper'

#attr_accessible :active, :email, :first_name, :github_access_token, :github_profile, :last_name, :major, :skills


describe Member do
  before(:each) do
    @member = Member.create!(:first_name => "Travis", :last_name => "Person")
    @project = Project.create!

    @Proecjt.lead << @member

  end

  it "should have a first and last name" do

  end

  it "can be instantiated" do
    Member.new.should be_an_instance_of(Member)
  end

  it "can be saved successfully" do
    Member.create.should be_persisted
  end
end
