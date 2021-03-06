require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ProfileClaimsController do

  # This should return the minimal set of attributes required to create a valid
  # ProfileClaim. As you add validations to ProfileClaim, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProfileClaimsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all profile_claims as @profile_claims" do
      profile_claim = ProfileClaim.create! valid_attributes
      get :index, {}, valid_session
      assigns(:profile_claims).should eq([profile_claim])
    end
  end

  describe "GET show" do
    it "assigns the requested profile_claim as @profile_claim" do
      profile_claim = ProfileClaim.create! valid_attributes
      get :show, {:id => profile_claim.to_param}, valid_session
      assigns(:profile_claim).should eq(profile_claim)
    end
  end

  describe "GET new" do
    it "assigns a new profile_claim as @profile_claim" do
      get :new, {}, valid_session
      assigns(:profile_claim).should be_a_new(ProfileClaim)
    end
  end

  describe "GET edit" do
    it "assigns the requested profile_claim as @profile_claim" do
      profile_claim = ProfileClaim.create! valid_attributes
      get :edit, {:id => profile_claim.to_param}, valid_session
      assigns(:profile_claim).should eq(profile_claim)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ProfileClaim" do
        expect {
          post :create, {:profile_claim => valid_attributes}, valid_session
        }.to change(ProfileClaim, :count).by(1)
      end

      it "assigns a newly created profile_claim as @profile_claim" do
        post :create, {:profile_claim => valid_attributes}, valid_session
        assigns(:profile_claim).should be_a(ProfileClaim)
        assigns(:profile_claim).should be_persisted
      end

      it "redirects to the created profile_claim" do
        post :create, {:profile_claim => valid_attributes}, valid_session
        response.should redirect_to(ProfileClaim.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved profile_claim as @profile_claim" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProfileClaim.any_instance.stub(:save).and_return(false)
        post :create, {:profile_claim => {}}, valid_session
        assigns(:profile_claim).should be_a_new(ProfileClaim)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ProfileClaim.any_instance.stub(:save).and_return(false)
        post :create, {:profile_claim => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested profile_claim" do
        profile_claim = ProfileClaim.create! valid_attributes
        # Assuming there are no other profile_claims in the database, this
        # specifies that the ProfileClaim created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        ProfileClaim.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => profile_claim.to_param, :profile_claim => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested profile_claim as @profile_claim" do
        profile_claim = ProfileClaim.create! valid_attributes
        put :update, {:id => profile_claim.to_param, :profile_claim => valid_attributes}, valid_session
        assigns(:profile_claim).should eq(profile_claim)
      end

      it "redirects to the profile_claim" do
        profile_claim = ProfileClaim.create! valid_attributes
        put :update, {:id => profile_claim.to_param, :profile_claim => valid_attributes}, valid_session
        response.should redirect_to(profile_claim)
      end
    end

    describe "with invalid params" do
      it "assigns the profile_claim as @profile_claim" do
        profile_claim = ProfileClaim.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProfileClaim.any_instance.stub(:save).and_return(false)
        put :update, {:id => profile_claim.to_param, :profile_claim => {}}, valid_session
        assigns(:profile_claim).should eq(profile_claim)
      end

      it "re-renders the 'edit' template" do
        profile_claim = ProfileClaim.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        ProfileClaim.any_instance.stub(:save).and_return(false)
        put :update, {:id => profile_claim.to_param, :profile_claim => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested profile_claim" do
      profile_claim = ProfileClaim.create! valid_attributes
      expect {
        delete :destroy, {:id => profile_claim.to_param}, valid_session
      }.to change(ProfileClaim, :count).by(-1)
    end

    it "redirects to the profile_claims list" do
      profile_claim = ProfileClaim.create! valid_attributes
      delete :destroy, {:id => profile_claim.to_param}, valid_session
      response.should redirect_to(profile_claims_url)
    end
  end

end
