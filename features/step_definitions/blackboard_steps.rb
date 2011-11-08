Given /^I do nothing$/ do
end

Given /^the counter for "([^"]*)" is at "([^"]*)"$/ do |good, amount|
  PrancingPony::Stock.create!(:name => good) unless PrancingPony::Stock.find_by_name(good)
  PrancingPony::Stock.find_by_name(good).amount = amount
end

Given /^the blackboard lists these values:$/ do |table|
  table.hashes.each do |row|
    u = User.create!(:nick => row[:name])
    u.drunk = row[:drunk]
    u.debit = row[:debit]
    u.save!
  end
end

