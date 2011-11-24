require "prancing_pony/engine"

module PrancingPony
  Engine.config.after_initialize do
    require "prancing_pony/user.rb"
  end
end
