Rails.application.routes.draw do
  root 'welcome#index'
  resources :userslooks
  resources :userlooks
  resources :userposts
  resources :lookcomments
  resources :usercomments
  resources :stylistposts
  resources :stylistlooks
  resources :clientstatuses
  resources :styliststatuses
  resources :comments
  resources :posts
  resources :looks
  resources :clients
  resources :stylists
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
