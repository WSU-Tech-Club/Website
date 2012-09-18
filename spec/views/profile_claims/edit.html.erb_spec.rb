require 'spec_helper'

describe "profile_claims/edit" do
  before(:each) do
    @profile_claim = assign(:profile_claim, stub_model(ProfileClaim,
      :email => "MyString",
      :profile_id => 1,
      :token => "MyString"
    ))
  end

  it "renders the edit profile_claim form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profile_claims_path(@profile_claim), :method => "post" do
      assert_select "input#profile_claim_email", :name => "profile_claim[email]"
      assert_select "input#profile_claim_profile_id", :name => "profile_claim[profile_id]"
      assert_select "input#profile_claim_token", :name => "profile_claim[token]"
    end
  end
end
