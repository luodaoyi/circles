Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'welcome/index'
  # get 'users/index'
  # get 'sessions/index'

  root 'welcome#index'

  resources :users
  resources :sessions

end
