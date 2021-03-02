Rails.application.routes.draw do
  get 'users/index'
  get "login" => "users#login_form"
  get "users/new" => "users#new"
  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  get '/' => "home#top"
  post "posts/create" => "posts#create"
  post "users/create" => "users#create"
  post "login" => "users#login"
  post "logout" => "users#logout"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
