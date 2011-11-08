require 'spec_helper'

describe User do
  it "should have a nick" do
    User.create!(:nick => "Robert")
  end
  it "should store the amount of drunken things" do
    u = User.create!(:nick => "Robert")
    u.drunk = 100
  end
end
