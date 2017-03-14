Rails.application.routes.draw do
 root :to => "travel#index"

 resources :users
 resources :articles
 resources :comments 
 resources :locations, :only => [:index, :show]
 resources :votes, :only => [:show]
end
