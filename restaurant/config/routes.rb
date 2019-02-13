Rails.application.routes.draw do
  devise_for :users
  
  root 'orders#index'
  
  resources :dishes
  
  resources :orders do
    member do
      get 'prepare' #'/orders/:id/prepare'
      post 'add'
      delete 'remove'
      put 'submit'
    end
  end
  
  get '/restaurant/orders' => 'restaurant_orders#index'
  put '/restaurant/orders/:id/prepare' => 'restaurant_orders#prepare', as: :prepare
  put '/restaurant/orders/:id/enroute' => 'restaurant_orders#enroute', as: :enroute
  put '/restaurant/orders/:id/deliver' => 'restaurant_orders#deliver', as: :deliver
  put '/restaurant/orders/:id/complete' => 'restaurant_orders#complete', as: :complete

end
