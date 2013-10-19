Theorientationexpress::Application.routes.draw do

  resources :answers


  resources :questions


  resources :topics


  resources :jobs


  resources :departments


  root :to => "home#index"

  get "admin" => "admin#index"
  devise_for :users
  resources :users
end