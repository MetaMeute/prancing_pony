require 'spec_helper'
require 'nokogiri'

describe "prancing_pony/blackboard/index.xml.haml" do
  it "should have one blackboard document element" do
    render
    doc = Nokogiri::XML.parse(rendered)
    doc.root.name.should == "blackboard"
  end
end
