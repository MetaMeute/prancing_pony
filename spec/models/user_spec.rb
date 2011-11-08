require 'spec_helper'

describe User do
  before(:each) do
    User.create!(:nick => "Robert")
  end
  let(:user) { User.find_by_nick "Robert" }

  it "should have a nick" do
    user.nick.should eq("Robert")
  end

  it "should store the amount of drunken things" do
    user.drunk = 100
  end

  it "should store the debit of a user" do
    user.debit = 50
  end
end
