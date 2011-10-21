module PrancingPony
  class BlackboardController < ApplicationController
    def index
      @users = User.all
    end
  
  end
end
