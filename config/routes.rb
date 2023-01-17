Rails.application.routes.draw do
  resources :lists, only: [:show, :index, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end

  root to: 'lists#index'

  delete '/lists/:id', to: 'lists#destroy', as: 'delete_list'

  delete '/lists/:list_id/bookmarks/:id', to: 'bookmarks#destroy', as: 'delete_bookmark'
  end
