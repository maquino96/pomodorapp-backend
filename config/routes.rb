Rails.application.routes.draw do
  # resources :study_tasks
  # resources :tasks
  # resources :study_sessions
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

###Users
post '/users/login', to: 'users#login'  
get '/users/:id', to: 'users#show' 
post '/users', to: 'users#create'
patch '/users/:id', to: 'users#update' 

###Tasks

get '/tasks/:id', to: 'tasks#show' 
post '/tasks', to: 'tasks#create'
delete '/tasks/:id', to: 'tasks#destroy'

###StudySessions

get '/study_sessions/:id', to: 'study_sessions#show' 
post '/study_sessions', to: 'study_sessions#create'
patch '/study_sessions/:id', to: 'study_sessions#update' 
delete '/study_sessions/:id', to: 'study_sessions#destroy'

###StudyTasks

post '/study_tasks', to: 'study_tasks#create'

end
