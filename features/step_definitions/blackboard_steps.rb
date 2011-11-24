Given /^I do nothing$/ do
end

Given /^the counter for "([^"]*)" is at "([^"]*)"$/ do |good, amount|
  PrancingPony::Stock.create!(:name => good) unless PrancingPony::Stock.find_by_name(good)
  good = PrancingPony::Stock.find_by_name(good)
  good.amount = amount
  good.save!
end

Given /^the blackboard lists these values:$/ do |table|
  table.hashes.each do |row|
    u = User.create!(:nick => row[:name])
    u.drunk = row[:drunk]
    u.debit = row[:debit]
    u.save!
  end
end

Then /^the blackboard should list these values:$/ do |table|
  table.hashes.each do |row|
    name = row[:name]
    page.should have_css("table td##{name}_drunk", :text => row[:drunk])
    page.should have_css("table td##{name}_debit", :text => row[:debit])
  end
end

Then /^the counter for "([^"]*)" should be at "([^"]*)"$/ do |good, amount|
  page.should have_css("##{good}_counter", :text => amount)
end

Given /^I am logged in as "([^"]*)"$/ do |name|
  User.class_eval do
    def current_user
      User.find_by_nick name
    end
  end
end

Then /^my drinking counter should be at "([^"]*)"$/ do |arg1|
    pending # express the regexp above with the code you wish you had
end

Then /^my credit should be at "([^"]*)"$/ do |arg1|
    pending # express the regexp above with the code you wish you had
end

Then /^the counter for "([^"]*)" should be "([^"]*)"$/ do |arg1, arg2|
    pending # express the regexp above with the code you wish you had
end

