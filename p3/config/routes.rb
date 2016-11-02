Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # HAVING DIFFICULTY WITH CUSTOM ROUTES, I WANT TO SET ROOT TO /PETS INSTEAD OF / AND DISPLAY ALL PETS
  # root 'pets#index'
  root :to => redirect('/pets')
  # get '/', :to => 'pets#index'
  get '/pets', :to => 'pets#index'
  get '/home', :to => 'pets#index'
  get '/', :to => 'pets#index'
  
  resources :pets, only: [:index, :show] do
    resources :toys, only: [:index, :show]
  end
end
