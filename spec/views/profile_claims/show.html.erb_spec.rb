require 'spec_helper'

describe "profile_claims/show" do
  before(:each) do
    @profile_claim = assign(:profile_claim, stub_model(ProfileClaim,
      :email => "Email",
      :profile_id => 1,
      :token => "Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
    rendered.should match(/1/)
    rendered.should match(/Token/)
  end
end
