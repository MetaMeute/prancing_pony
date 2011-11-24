Rails.application.routes.draw do
  devise_for :users

  get :sign_in, :controller => :users, :action => :create_fake_session

  mount PrancingPony::Engine => "/prancing_pony"

  root :to => "prancing_pony/blackboard#index"
end
