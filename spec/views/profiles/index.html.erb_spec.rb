require 'spec_helper'

describe "profiles/index" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :first_name => "First Name",
        :last_name => "Last Name",
        :active => false,
        :github_profile => "Github Profile",
        :major => "Major",
        :skills => "MyText",
        :github_access_token => "Github Access Token"
      ),
      stub_model(Profile,
        :first_name => "First Name",
        :last_name => "Last Name",
        :active => false,
        :github_profile => "Github Profile",
        :major => "Major",
        :skills => "MyText",
        :github_access_token => "Github Access Token"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Github Profile".to_s, :count => 2
    assert_select "tr>td", :text => "Major".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Github Access Token".to_s, :count => 2
  end
end
