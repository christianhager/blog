Blog::Application.routes.draw do |map|
  resources :posts
  devise_for :users 
  root :to => "posts#index"
end
