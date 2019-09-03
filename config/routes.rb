Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # # There are 7 CRUD routes

  # # CREATE
  # get    'tasks/new',           to: 'tasks#new', as: :new_task
  # post   'tasks',          to: 'tasks#create'

  # # READ
  # get    'tasks',          to: 'tasks#index', as: :tasks
  # get    'tasks/:id',      to: 'tasks#show', as: :task

  # # UPDATE
  # get    'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # patch  'tasks/:id',      to: 'tasks#update'

  # # ANNIHILATE
  # delete 'tasks/:id',      to: 'tasks#destroy'

  resources :tasks
end
