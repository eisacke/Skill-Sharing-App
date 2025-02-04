class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user
  def current_user
    @current_user ||=User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !! current_user
  end

  def authenticate
    unless logged_in?
      flash[:error] = "You must be logged in to access this page"
      redirect_to login_url
    end
  end

  def authenticate_user(user)
    if user != current_user
      flash[:error] = "You are not authorized to do that. Please login."
      redirect_to root_path
    else 
      true
    end
  end

end
