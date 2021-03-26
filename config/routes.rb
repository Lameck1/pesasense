Rails.application.routes.draw do
  get 'login' => 'access#new'
  post   'login'   => 'access#create'
  delete 'logout' => 'access#destroy'

  get 'external' => 'expenses#external'
  
  resources :expenses  
  resources :users
  resources :groups

  root to: 'expenses#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
