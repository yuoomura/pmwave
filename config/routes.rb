Rails.application.routes.draw do
  root to: 'top_kadais#show'

  resources :kadai_itiransyousais
  resources :top_kadais
  resources :top_hnsts
  resources :top_yokens
end