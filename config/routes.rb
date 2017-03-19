Rails.application.routes.draw do
 root :to => "articles#index"

 resources :users
 resources :articles
 resources :comments 
 resources :locations, :only => [:index, :show]
 resources :votes, :only => [:show]

 get "/login" => "sessions#new"
 post "/login" => "sessions#create"
 get "/logout" => "sessions#destroy"

 get "/images/new" => "images#new"
 post "/images" => "images#create"

 get "/signup" => "users#new"
 post "/users" => "users#create"

end
