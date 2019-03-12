Rails.application.routes.draw do
# ====ここから削除====
  # get 'jobs/index'
  # get 'jobs/new'
  # get 'jobs/create'
  # get 'jobs/show'
  # get 'homes/index'
# =====ここまで削除====
  root 'homes#index'
  resources :jobs, only: [:index, :new, :create, :show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
