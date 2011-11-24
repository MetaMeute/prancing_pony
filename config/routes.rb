PrancingPony::Engine.routes.draw do
  get 'blackboard', :controller => :blackboard, :action => :index

  post 'drink', :controller => :blackboard, :action => :drink
  post 'pay', :controller => :blackboard, :action => :pay

  root :to => 'blackboard#index'
end
