Rails.application.routes.draw do
 root :to => "travel#index"

 resources :users
 resources :articles
 resources :comment 
 resources :categories, :only => [:index, :show]
 resources :votes, :only => [:show]
end
