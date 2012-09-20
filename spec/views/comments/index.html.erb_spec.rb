require 'spec_helper'

describe "comments/index" do
  before(:each) do
    assign(:comments, [
      stub_model(Comment,
        :content => "MyText",
        :author_id => 1,
        :commentable_id => 2,
        :commentable_type => "Commentable Type"
      ),
      stub_model(Comment,
        :content => "MyText",
        :author_id => 1,
        :commentable_id => 2,
        :commentable_type => "Commentable Type"
      )
    ])
  end

  it "renders a list of comments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Commentable Type".to_s, :count => 2
  end
end
