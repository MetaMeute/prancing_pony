Given /^the counter for "([^"]*)" is at "([^"]*)"$/ do |good, amount|
  PrancingPony::Stock.create!(:name => good) unless PrancingPony::Stock.find_by_name(good)
  PrancingPony::Stock.find_by_name(good).amount = amount
end

