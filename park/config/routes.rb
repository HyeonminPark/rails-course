Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'campgrounds#index'
  
  resources :campgrounds
  resources :activities
  resources :registers
  
  post 'registers/add_activity' => 'registers#add_activity'

end
