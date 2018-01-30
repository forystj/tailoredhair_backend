Rails.application.routes.draw do
  root 'welcome#index'
  resources :userlooks
  resources :userposts
  resources :lookcomments
  resources :usercomments
  resources :comments
  resources :posts
  resources :looks
  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
