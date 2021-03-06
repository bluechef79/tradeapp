Rails.application.routes.draw do
  
  devise_for :users, :controllers => {:registrations => "user/registrations"}
  resources :user_stocks, except: [:show, :edit, :update]
  root 'welcome#index'
  get 'my_portfolio' => 'users#my_portfolio'
  get 'search_stocks' => 'stocks#search'
  get 'my_friends' => 'users#my_friends'
  get 'search_friends', to: 'users#search'
  post 'add_friend', to: 'users#add_friend'
  resources :users, only: [:show]
  resources :friendships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
