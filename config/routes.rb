Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'categories' do
    resources 'products'
  end


  get '/ecommerce', to: 'pages#ecommerce', as: 'ecommerce'
  get '/contactanos', to: 'pages#contact', as: 'contact'
  get '/quienessomos', to: 'pages#about', as: 'about'

  root 'pages#about'

end
