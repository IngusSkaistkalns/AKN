Rails.application.routes.draw do
  resources :fotos, only: [:index, :show]

  root 'welcome#index'

  namespace :admin do
    root :to => 'admin/fotos#index'
    resources :fotos
  end
end
