Rails.application.routes.draw do

  root to: 'pages#index'

  resources :pages
  get 'abouts/index'
  get 'promos/index'
  get 'promos/show'
  get 'tours/index'
  get 'tours/show'

  namespace :admin do
    resources :categories, :clients, :promos, :tours, :users
  end

end
