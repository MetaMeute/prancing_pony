require 'spec_helper'

describe "prancing_pony/blackboard/index.html.haml" do

  describe "the blackboard table" do
    before(:each) { render }

    describe "the table head" do
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

  end
end
