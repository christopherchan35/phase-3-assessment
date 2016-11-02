Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pets#index'
  get '/pets', :to => 'pets#index'
  get '/home', :to => 'pets#index'
  get '/', :to => 'pets#index'

  resources :pets, only: [:index, :show, :new, :create] do
    resources :toys, only: [:index, :show]
  end

  resources :pets, only: :create
end
