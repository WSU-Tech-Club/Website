require 'spec_helper'

describe "members/edit" do
  before(:each) do
    @member = assign(:member, stub_model(Member,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :active => false,
      :github_profile => "MyString",
      :major => "MyString",
      :skills => "MyText",
      :github_access_token => "MyString"
    ))
  end

  it "renders the edit member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => members_path(@member), :method => "post" do
      assert_select "input#member_first_name", :name => "member[first_name]"
      assert_select "input#member_last_name", :name => "member[last_name]"
      assert_select "input#member_email", :name => "member[email]"
      assert_select "input#member_active", :name => "member[active]"
      assert_select "input#member_github_profile", :name => "member[github_profile]"
      assert_select "input#member_major", :name => "member[major]"
      assert_select "textarea#member_skills", :name => "member[skills]"
      assert_select "input#member_github_access_token", :name => "member[github_access_token]"
    end
  end
end
