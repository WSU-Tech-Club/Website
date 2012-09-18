require 'spec_helper'

describe "profile_claims/new" do
  before(:each) do
    assign(:profile_claim, stub_model(ProfileClaim,
      :email => "MyString",
      :profile_id => 1,
      :token => "MyString"
    ).as_new_record)
  end

  it "renders new profile_claim form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profile_claims_path, :method => "post" do
      assert_select "input#profile_claim_email", :name => "profile_claim[email]"
      assert_select "input#profile_claim_profile_id", :name => "profile_claim[profile_id]"
      assert_select "input#profile_claim_token", :name => "profile_claim[token]"
    end
  end
end
