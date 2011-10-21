require 'spec_helper'

module PrancingPony
describe BlackboardController do

  describe "GET index" do
    before(:each) { get 'index' }

    it { response.should be_success }
      
    it "should assign the users" do
      assigns(:users).should_not be_empty
    end
  end

end
end
