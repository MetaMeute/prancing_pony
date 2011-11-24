class User < ActiveRecord::Base
  devise

  attr_accessible :nick
end
