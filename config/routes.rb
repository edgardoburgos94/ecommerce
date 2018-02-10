Rails.application.routes.draw do

  devise_for :suppliers
  devise_for :users
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  match 'suppliers/:id' => 'suppliers#destroy', :via => :delete, :as => :admin_destroy_supplier

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :sub_categories do
      resources :products do
        resources :product_comments, only: [:create]
      end
    end
  end

  resources :order_items
  resource :carts, only: [:show]
  resources :users, only: [:show]
  resources :suppliers, only: [:show] do
    resources :supplier_comments, only: [:create]
  end
  get '/descuentos', to: 'categories#descuentos', as: 'descuentos'


  get '/alfa', to: 'pages#alfa', as: 'alfa'
  get '/contactanos', to: 'pages#contact', as: 'contact'
  get '/quienessomos', to: 'pages#about', as: 'about'
  get '/administrador', to: 'pages#admin', as: 'admin'
  get '/cate_list', to: 'pages#cate_list', as: 'cate_list'
  get '/produ_list', to: 'pages#produ_list', as: 'produ_list'
  get '/user_list', to: 'pages#user_list', as: 'user_list'
  get '/suppli_list', to: 'pages#suppli_list', as: 'suppli_list'
  get '/mi_perfil', to: 'pages#my_profile', as: 'my_profile'
  get '/blog', to: 'pages#blog', as: 'blog'

  get '/blog1', to: 'blogs#blog1', as: 'blog1'
  get '/blog2', to: 'blogs#blog2', as: 'blog2'
  get '/blog3', to: 'blogs#blog3', as: 'blog3'
  get '/blog4', to: 'blogs#blog4', as: 'blog4'



  root 'categories#index'

end
