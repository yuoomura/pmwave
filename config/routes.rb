Rails.application.routes.draw do
  root to: 'top_kadais#index'
  
  get "trn_kadai_kanris/index"
  get "trn_kadai_kanris/show"
  get "trn_kadai_kanris/new"
  post "trn_kadai_kanris/index"

  get "kadai_itiransyousais/index"
  get "kadai_itiransyousais/show"
  get "kadai_itiransyousais/new"
  post "kadai_itiransyousais/index"
  get "top_kadais/index"
  get "top_kadais/show"

  resources :trn_kadai_kanris
  resources :top_kadais
  resources :kadai_itiransyousais
  resources :top_hnsts
  resources :top_yokens

end