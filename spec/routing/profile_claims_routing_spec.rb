require "spec_helper"

describe ProfileClaimsController do
  describe "routing" do

    it "routes to #index" do
      get("/profile_claims").should route_to("profile_claims#index")
    end

    it "routes to #new" do
      get("/profile_claims/new").should route_to("profile_claims#new")
    end

    it "routes to #show" do
      get("/profile_claims/1").should route_to("profile_claims#show", :id => "1")
    end

    it "routes to #edit" do
      get("/profile_claims/1/edit").should route_to("profile_claims#edit", :id => "1")
    end

    it "routes to #create" do
      post("/profile_claims").should route_to("profile_claims#create")
    end

    it "routes to #update" do
      put("/profile_claims/1").should route_to("profile_claims#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/profile_claims/1").should route_to("profile_claims#destroy", :id => "1")
    end

  end
end
