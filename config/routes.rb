Rails.application.routes.draw do
  devise_for :users
  get "tasks/new" => 'tasks#new'
  post "tasks" => 'tasks#create'
  get "user/new" => 'user#new'
  get "tasks" => 'tasks#index'
  get "tasks/:id/complete" => 'tasks#complete'
  get "tasks/index" => 'tasks#create'
  root to: 'tasks#index'
end
