Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'
  resources :fotos, only: [:index, :show]

  root 'welcome#index'

  get 'admin' => 'admin/fotos#index'
  namespace :admin do
    resources :fotos
  end
end
