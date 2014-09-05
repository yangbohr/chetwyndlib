Myblog::Application.routes.draw do
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

  root 'search#search'
end
