module PrancingPony
  class BlackboardController < ApplicationController
    def index
      @users = User.all
      @stock = Stock.where('amount != 0').all
    end
  
  end
end
