class ProfileClaimsController < ApplicationController
  # GET /profile_claims
  # GET /profile_claims.json
  def index
    @profile_claims = ProfileClaim.find(:all, :include => [:profile])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @profile_claims }
    end
  end

  # GET /profile_claims/1
  # GET /profile_claims/1.json
  def show
    @profile_claim = ProfileClaim.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @profile_claim }
    end
  end

  # GET /profile_claims/new
  # GET /profile_claims/new.json
  def new
    @profile_claim = ProfileClaim.new({:profile_id => params[:profile_id]})

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @profile_claim }
    end
  end

  # GET /profile_claims/1/edit
  def edit
    @profile_claim = ProfileClaim.find(params[:id])
  end

  # POST /profile_claims
  # POST /profile_claims.json
  def create
    @profile_claim = ProfileClaim.new(params[:profile_claim])

    respond_to do |format|
      if @profile_claim.save && @profile_claim.send_profile_claim
        format.html { redirect_to @profile_claim, notice: 'Profile claim was successfully created.' }
        format.json { render json: @profile_claim, status: :created, location: @profile_claim }
      else
        format.html { render action: "new" }
        format.json { render json: @profile_claim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /profile_claims/1
  # PUT /profile_claims/1.json
  def update
    @profile_claim = ProfileClaim.find(params[:id])

    respond_to do |format|
      if @profile_claim.update_attributes(params[:profile_claim])
        format.html { redirect_to @profile_claim, notice: 'Profile claim was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @profile_claim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profile_claims/1
  # DELETE /profile_claims/1.json
  def destroy
    @profile_claim = ProfileClaim.find(params[:id])
    @profile_claim.destroy

    respond_to do |format|
      format.html { redirect_to profile_claims_url }
      format.json { head :no_content }
    end
  end
end
