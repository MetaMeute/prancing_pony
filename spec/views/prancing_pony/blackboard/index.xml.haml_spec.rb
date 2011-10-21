require 'spec_helper'
require 'nokogiri'

describe "prancing_pony/blackboard/index.xml.haml" do
  it "should have one blackboard document element" do
    assign(:users, [])
    render
    doc = Nokogiri::XML.parse(rendered)
    doc.root.name.should == "blackboard"
  end

  let(:mock_users) do
    [ double(User, {:nick => 'Joe', :drunk => 24, :debit => -23}),
      double(User, {:nick => 'Matze', :drunk => 9001, :debit => 100})
    ]
  end

  it "should list all users" do
    assign(:users, mock_users)
    render
    doc = Nokogiri::XML.parse(rendered)
    doc.root.element_children.should have(2).items
    users = doc.root > ('user')
    users.should have(2).items
  end
end
