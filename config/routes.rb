Rails.application.routes.draw do
  root to: 'top_kadais#index'

  resources :top_kadais
  resources :top_hnsts
  resources :top_yokens
end