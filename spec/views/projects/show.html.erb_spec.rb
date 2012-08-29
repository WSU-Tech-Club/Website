require 'spec_helper'

describe "projects/show" do
  before(:each) do
    @project = assign(:project, stub_model(Project,
      :title => "Title",
      :member_lead => 1,
      :github_repo => "Github Repo",
      :readme_file => "Readme File"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/Github Repo/)
    rendered.should match(/Readme File/)
  end
end
