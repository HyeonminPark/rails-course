Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'hosts#index'
  
  get '/hosts/new' => 'hosts#new'
  post '/hosts' => 'hosts#create'
  get '/hosts' => 'hosts#index'
  get '/hosts/edit' => 'hosts#edit'
  post '/hosts/edit' => 'hosts#update'
  get '/hosts/delete' => 'hosts#destroy'
  get '/hosts/show' => 'hosts#show'
  
  get '/guests/new' => 'guests#new'
  post '/guests' => 'guests#create'
  get '/guests' => 'guests#index'
  get '/guests/edit' => 'guests#edit'
  post '/guests/edit' => 'guests#update'
  get '/guests/delete' => 'guests#destroy'
  
end
