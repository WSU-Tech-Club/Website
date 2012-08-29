require 'spec_helper'

describe "projects/new" do
  before(:each) do
    assign(:project, stub_model(Project,
      :title => "MyString",
      :member_lead => 1,
      :github_repo => "MyString",
      :readme_file => "MyString"
    ).as_new_record)
  end

  it "renders new project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path, :method => "post" do
      assert_select "input#project_title", :name => "project[title]"
      assert_select "input#project_member_lead", :name => "project[member_lead]"
      assert_select "input#project_github_repo", :name => "project[github_repo]"
      assert_select "input#project_readme_file", :name => "project[readme_file]"
    end
  end
end
