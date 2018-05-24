Rails.application.routes.draw do
  get 'top_kadais/index'
  root to: 'top_kadais#index'

  resources :top_kadais
  resources :top_hnsts
  resources :top_yokens
end