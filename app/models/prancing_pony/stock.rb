module PrancingPony
  class Stock < ActiveRecord::Base
    validates_uniqueness_of :name
  end
end
