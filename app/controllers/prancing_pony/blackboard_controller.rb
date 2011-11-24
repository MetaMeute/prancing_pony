module PrancingPony
  class BlackboardController < ApplicationController

    before_filter :find_user, :only => [:drink, :pay]

    def index
      @users = User.all
      @stock = Stock.where('amount != 0').all
    end
  
    def drink
      return if @user.nil?

      @user.drink!

      redirect_to blackboard_path
    end

    def pay
      return if @user.nil?
    end

    private
    def find_user
      @user = User.find_by_nick params[:nick]

      if @user.nil? then
        flash[:error] = "Must provide a nick!"
        redirect_to root_url
      end
    end
  end
end
