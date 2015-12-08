Rails.application.routes.draw do

  get 'wikis/new'

  get 'wikis/edit'

  get 'wikis/show'

  get 'wikis/index'

  get 'welcome/index'

  get 'welcome/about'
  devise_for :users
  root to: 'welcome#index'

  resources :wikis

end
