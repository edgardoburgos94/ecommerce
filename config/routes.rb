Rails.application.routes.draw do

  resources :lists
  get 'likes/create'

  get 'likes/destroy'

  get 'favourites/create'

  get 'favourite/create'

  devise_for :suppliers
  devise_for :users
  match 'users/:id' => 'users#destroy', :via => :delete, :as => :admin_destroy_user
  match 'suppliers/:id' => 'suppliers#destroy', :via => :delete, :as => :admin_destroy_supplier

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :sub_categories do
      resources :products do
        resources :favourites, only: [:create, :destroy]
        resources :likes, only: [:create, :destroy]

        resources :product_comments, only: [:create]
      end
    end
  end


  resources :order_items
  resource :carts, only: [:show]
  resources :users, only: [:show]
  resources :suppliers, only: [:show, :index] do
    resources :lists
    resources :supplier_comments, only: [:create]
  end



  get '/descuentos', to: 'categories#descuentos', as: 'descuentos'


  get '/alfa', to: 'pages#alfa', as: 'alfa'
  get '/contactanos', to: 'pages#contact', as: 'contact'
  get '/quienessomos', to: 'pages#about', as: 'about'
  get '/administrador', to: 'pages#admin', as: 'admin'
  get '/cate_list', to: 'pages#cate_list', as: 'cate_list'
  get '/produ_list', to: 'pages#produ_list', as: 'produ_list'
  get '/mis_productos', to: 'suppliers#my_products', as: 'my_products'
  get '/user_list', to: 'pages#user_list', as: 'user_list'
  get '/suppli_list', to: 'pages#suppli_list', as: 'suppli_list'
  get '/blog', to: 'pages#blog', as: 'blog'

  get '/choose', to: 'products#choose', as: 'choose'

  root 'categories#index'

end
