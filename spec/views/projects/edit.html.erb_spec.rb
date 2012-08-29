require 'spec_helper'

describe "projects/edit" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :title => "MyString",
      :member_lead => 1,
      :github_repo => "MyString",
      :readme_file => "MyString"
    ))
  end

  it "renders the edit project form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => projects_path(@project), :method => "post" do
      assert_select "input#project_title", :name => "project[title]"
      assert_select "input#project_member_lead", :name => "project[member_lead]"
      assert_select "input#project_github_repo", :name => "project[github_repo]"
      assert_select "input#project_readme_file", :name => "project[readme_file]"
    end
  end
end
