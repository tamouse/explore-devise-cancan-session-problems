class ApplicationController < ActionController::Base
  after_filter :store_location

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |ex|
    if user_signed_in?
      redirect_to root_path, alert: ex.message
    else
      redirect_to new_user_session_path
    end
  end

  def store_location
    unless %w[/users/sign_in /users/sign_up /users/sign_out].include?(request.path) || request.xhr?
      store_location_for(:user, request.env["REQUEST_PATH"])
    end
  end

end
