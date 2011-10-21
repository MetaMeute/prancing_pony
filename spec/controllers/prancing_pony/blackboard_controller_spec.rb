require 'spec_helper'

module PrancingPony
describe BlackboardController do

  before(:each) do
    User.create!(:nick => 'Testuser1')
    User.create!(:nick => 'Testuser2')
  end

  describe "GET index" do
    before(:each) { get 'index' }

    it { response.should be_success }
      
    it "should assign the users" do
      assigns(:users).should_not be_empty
    end
  end

end
end
