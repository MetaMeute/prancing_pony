require 'spec_helper'

describe "prancing_pony/blackboard/index.html.haml" do

  describe "the blackboard table" do
    describe "the table head" do
      before(:each) do
        assign :users, User.all
        assign :stock, []
        render
      end

      it "should have a name column" do
        rendered.should have_css("table#blackboard th", :text => "Name")
      end
      it "should have a drunk column" do
        rendered.should have_css("table#blackboard th", :text => "Drunk")
      end
      it "should have a debit column" do
        rendered.should have_css("table#blackboard th", :text => "Debit")
      end
    end

    describe "the table body" do
      before(:each) do
        User.create!(:nick => "Robert", :drunk => 100, :debit => 5)
        User.create!(:nick => "Mike", :drunk => 42, :debit => 23)
        User.create!(:nick => "Matze", :drunk => 9001, :debit => 1337)
        assign :users, User.all
        assign :stock, []
        render
      end

      it "should render all users with their data" do
        User.all.each do |u|
          rendered.should have_css("table#blackboard td", :text => u.nick)
          rendered.should have_css("table#blackboard td##{u.nick}_drunk", :text => u.drunk.to_s)
          rendered.should have_css("table#blackboard td##{u.nick}_debit", :text => u.debit.to_s)
        end
      end
    end
  end

  describe "the stock overview" do
    before(:each) do
      PrancingPony::Stock.create!(:name => "Club-Mate", :amount => 23)
      PrancingPony::Stock.create!(:name => "Beer", :amount => 42)
      assign :users, []
      assign :stock, PrancingPony::Stock.all
      render
    end

    it "should render information about the stock" do
      rendered.should have_content("42.0 bottles of Beer left")
      rendered.should have_content("23.0 bottles of Club-Mate left")
    end
  end
end
