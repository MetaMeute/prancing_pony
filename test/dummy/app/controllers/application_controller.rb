class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    User.all.first
  end
end
