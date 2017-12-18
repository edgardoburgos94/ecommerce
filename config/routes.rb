Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories do
    resources :products
  end


  get '/alfa', to: 'pages#alfa', as: 'alfa'
  get '/contactanos', to: 'pages#contact', as: 'contact'
  get '/quienessomos', to: 'pages#about', as: 'about'
  get '/administrador', to: 'pages#admin', as: 'admin'
  get '/cate_list', to: 'pages#cate_list', as: 'cate_list'
  get '/produ_list', to: 'pages#produ_list', as: 'produ_list'

  root 'categories#index'

end
