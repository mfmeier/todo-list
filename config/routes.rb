Rails.application.routes.draw do
  devise_for :users
  root to: "tasks#index"
  get "tasks/new" => 'tasks#new'
  post "tasks" => 'tasks#create'
  get "user/new" => 'user#new'
  get "tasks" => 'tasks#index'
  get "tasks/:id/complete" => 'tasks#complete'
  get "tasks/index" => 'tasks#create'
  # get "assignment/:task.id/user/:user.id" => 'assignment#add'
  get "user/:id/view" => 'user#view'
  get "assignment/add" => 'assignment#add'
  get "task/edit/:id" => 'task#edit'
  get "task/add"  => 'tasks#add'
  get "user/settings" => 'user#settings'
end
