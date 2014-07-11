class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #what is the rails 4 way to prevent password logging?
  #rails 2
  #filter_parameter_logging :password, :password_confirmation
  #rails 3
  #config.filter_parameters += [:password, :password_confirmation]
end
