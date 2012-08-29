require 'spec_helper'

describe "members/show" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :active => false,
      :github_profile => "Github Profile",
      :major => "Major",
      :skills => "MyText",
      :github_access_token => "Github Access Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Email/)
    rendered.should match(/false/)
    rendered.should match(/Github Profile/)
    rendered.should match(/Major/)
    rendered.should match(/MyText/)
    rendered.should match(/Github Access Token/)
  end
end
