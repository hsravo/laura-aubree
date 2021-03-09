Rails.application.routes.draw do
  devise_for :users

  root to: 'home#index'
  
  get '/admin', to: 'home#admin'
  get '/dashboard', to: 'home#dashboard'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
