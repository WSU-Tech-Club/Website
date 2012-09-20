class ApplicationController < ActionController::Base
  protect_from_forgery

  def avatar_url(profile)
    default_url = "" 
    if profile.user
      gravatar_id = Digest::MD5.hexdigest(profile.user.email.downcase)
      "http://gravatar.com/avatar/#{gravatar_id}.pngs=48&d=#{CGI.escape(default_url)}"
    else
      default_url
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :avatar_url
  helper_method :current_user

end
