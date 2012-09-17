class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private

  def current_member
    @current_member ||= Member.find(session[:member_id]) if  session[:member_id]
  end

  helper_method :current_member
end
