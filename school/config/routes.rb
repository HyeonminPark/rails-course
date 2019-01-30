Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :courses
  
  
  get '/students/new' => 'students#new'
  post '/students' => 'students#create'
  get '/students' => 'students#index'
  get '/students/edit' => 'students#edit'
  post '/students/edit' => 'students#update'
  get '/students/delete' => 'students#delete'
  
  get '/' => 'courses#index'
end
