class ApplicationController < ActionController::Base
  protect_from_forgery

  #devise method to redirect after the user is logged in
  def after_sign_in_path_for(resource_or_scope)
    dashboard_path
  end

  #devise method to redirect after the user is logged out
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
