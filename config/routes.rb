Rails.application.routes.draw do
  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

  end
