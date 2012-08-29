require 'spec_helper'

describe "projects/index" do
  before(:each) do
    assign(:projects, [
      stub_model(Project,
        :title => "Title",
        :member_lead => 1,
        :github_repo => "Github Repo",
        :readme_file => "Readme File"
      ),
      stub_model(Project,
        :title => "Title",
        :member_lead => 1,
        :github_repo => "Github Repo",
        :readme_file => "Readme File"
      )
    ])
  end

  it "renders a list of projects" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Github Repo".to_s, :count => 2
    assert_select "tr>td", :text => "Readme File".to_s, :count => 2
  end
end
