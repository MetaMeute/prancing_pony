require 'spec_helper'

describe PrancingPony::Stock do
  it "can store a good" do
    PrancingPony::Stock.create!(:name => "Club-Mate")
    PrancingPony::Stock.find_by_name("Club-Mate").should_not be_nil
  end

  it "can store amounts for goods" do
    PrancingPony::Stock.create!(:name => "Club-Mate")
    g = PrancingPony::Stock.find_by_name("Club-Mate")
    g.amount = 100
    g.save!
    g.amount.should eq(100)
  end
end
