Rails.application.routes.draw do

  resources :posts
  resources :users

  #devise_for :users
  devise_for :users, skip: [:sessions]

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    post 'signin', to: 'devise/sessions#create', as: :user_session
    delete 'logout', to: 'devise/sessions#destroy'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => "welcome#home"
end
