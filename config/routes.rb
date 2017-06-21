Rails.application.routes.draw do
  
  resources :games
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
