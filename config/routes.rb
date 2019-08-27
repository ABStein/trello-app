Rails.application.routes.draw do
  get '/' => 'tasks#index'
  get '/tasks/new' => 'tasks#new'
  post '/tasks' => 'tasks#create'
  get '/tasks/:id' => 'tasks#show'
  get 'tasks/:id/edit' => 'tasks#edit'
  get 'tasks/:id/update' => 'tasks#update'
  get 'tasks/:id' => 'tasks#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get '/logout' => 'sessions#delete'

end
