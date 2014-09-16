Myblog::Application.routes.draw do
  devise_for :users
  as :user do
    get "/login" => "devise/sessions#new"
  end

  resources :attachments 
  
  resources :isos

  resources :catalogues

  resources :safety_manuals

  resources :equipment_manuals

  resources :work_orders

  resources :projects

  resources :drawings

  resources :libraries
 
  get 'search', to: 'search'
  get 'users', to: 'users#index'

  root 'search#search'
end
