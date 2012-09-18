class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by_email(params[:email])
    respond_to do |format|
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        format.html { redirect_to root_url, :flash => { :success => 'Logged in.' } }
        format.json { render json: @session, status: :created, location: session }
      else
        format.html { render action: "new" }
        format.json { render json: @session.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    session[:user_id] = nil

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end
end
