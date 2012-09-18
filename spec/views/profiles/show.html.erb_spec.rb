require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :first_name => "First Name",
      :last_name => "Last Name",
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
    rendered.should match(/false/)
    rendered.should match(/Github Profile/)
    rendered.should match(/Major/)
    rendered.should match(/MyText/)
    rendered.should match(/Github Access Token/)
  end
end
