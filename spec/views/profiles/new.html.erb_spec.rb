require 'spec_helper'

describe "profiles/new" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :first_name => "MyString",
      :last_name => "MyString",
      :active => false,
      :github_profile => "MyString",
      :major => "MyString",
      :skills => "MyText",
      :github_access_token => "MyString"
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path, :method => "post" do
      assert_select "input#profile_first_name", :name => "profile[first_name]"
      assert_select "input#profile_last_name", :name => "profile[last_name]"
      assert_select "input#profile_active", :name => "profile[active]"
      assert_select "input#profile_github_profile", :name => "profile[github_profile]"
      assert_select "input#profile_major", :name => "profile[major]"
      assert_select "textarea#profile_skills", :name => "profile[skills]"
      assert_select "input#profile_github_access_token", :name => "profile[github_access_token]"
    end
  end
end
