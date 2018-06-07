Rails.application.routes.draw do
  root to: 'top_kadais#index'

  get "kadai_itiransyousais/index"
  get "kadai_itiransyousais/show"
  post "kadai_itiransyousais/index"
  get "top_kadais/index"
  get "top_kadais/show"
  
  resources :top_kadais
  resources :kadai_itiransyousais
  resources :top_hnsts
  resources :top_yokens
  
end