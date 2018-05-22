Rails.application.routes.draw do
  root to: 'd_kadai_kanris#index'

  resources :d_kadai_kanris
  resources :d_hnst_kanris
  resources :d_yoken_kanris
end