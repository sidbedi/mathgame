Rails.application.routes.draw do
  resources :answers
  resources :questions
  get 'training/index'
  post 'training/index'
  devise_for :users
  #devise_for :users, :controllers => { registrations: 'registrations'}
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
