class UsersController < ApplicationController 

  def create_fake_session
    sign_in(:user, User.all.first)
    redirect_to root_path
  end
end
