PrancingPony::Engine.routes.draw do
  get 'blackboard', :controller => :blackboard, :action => :index

  root :to => 'blackboard#index'
end
