Rails.application.routes.draw do
  resources :study_tasks
  resources :tasks
  resources :study_sessions
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
