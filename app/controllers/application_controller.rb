class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :categories
  helper_method :is_admin?

  private
  
  def current_user 
  	@current_user ||= nil || User.find(session[:user_id]) if session[:user_id]
  end	

  def categories
  	@categories = Category.all
  end

  def require_login
    unless current_user
      redirect_to login_url
    end
  end

  def is_admin?
    current_user == User.first
  end

end
