Rails.application.routes.draw do
  root 'welcome#index'

  get 'shopping_lists/new'

  resources :stores

  resources :shopping_lists do
    resources :items
  end
end
