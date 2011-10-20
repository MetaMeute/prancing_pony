$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "prancing_pony/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "prancing_pony"
  s.version     = PrancingPony::VERSION
  s.authors     = ["j.ohny.b"]
  s.email       = ["j.ohny.b@metameute.de"]
  s.homepage    = "http://www.metameute.de"
  s.summary     = "Club Mate and Beer will be sold over the counter in The Prancing Pony Inn!"
  s.description = "Let a bunch of 'Suffköppe' organise their drinking using this small piece of software."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.1.1"
  s.add_dependency "haml"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "cucumber-rails"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "rspec-rails"
end
