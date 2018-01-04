Rails.application.routes.draw do

  devise_for :suppliers
  devise_for :users
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  match 'suppliers/:id' => 'suppliers#destroy', :via => :delete, :as => :admin_destroy_supplier

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :products
  end

  resources :order_items
  resource :carts, only: [:show]
  resources :users, only: [:show]
  resources :suppliers, only: [:show]


  get '/alfa', to: 'pages#alfa', as: 'alfa'
  get '/contactanos', to: 'pages#contact', as: 'contact'
  get '/quienessomos', to: 'pages#about', as: 'about'
  get '/administrador', to: 'pages#admin', as: 'admin'
  get '/supplier', to: 'pages#suppli', as: 'suppli'
  get '/cate_list', to: 'pages#cate_list', as: 'cate_list'
  get '/produ_list', to: 'pages#produ_list', as: 'produ_list'
  get '/user_list', to: 'pages#user_list', as: 'user_list'
  get '/suppli_list', to: 'pages#suppli_list', as: 'suppli_list'
  get '/mi_perfil', to: 'pages#my_profile', as: 'my_profile'



  root 'categories#index'

end
