require 'spec_helper'

describe "profile_claims/index" do
  before(:each) do
    assign(:profile_claims, [
      stub_model(ProfileClaim,
        :email => "Email",
        :profile_id => 1,
        :token => "Token"
      ),
      stub_model(ProfileClaim,
        :email => "Email",
        :profile_id => 1,
        :token => "Token"
      )
    ])
  end

  it "renders a list of profile_claims" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
  end
end
