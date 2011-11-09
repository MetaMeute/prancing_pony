require 'spec_helper'

module PrancingPony
describe BlackboardController do

  before(:each) do
    User.create!(:nick => 'Testuser1')
    User.create!(:nick => 'Testuser2')
    Stock.create!(:name => "Club-Mate", :amount => 23)
    Stock.create!(:name => "Coffee", :amount => 0)
  end

  describe "GET index" do
    before(:each) { get 'index' }

    it { response.should be_success }
      
    it "should assign the users" do
      assigns(:users).should_not be_empty
    end
    
    it "should assign the non-empty stock items" do
      assigns(:stock).should have(1).item
    end
  end

end
end
