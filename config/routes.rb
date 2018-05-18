Rails.application.routes.draw do
  root to: 'd_kadai_kanris#index'

  resources :d_kadai_kanris
end