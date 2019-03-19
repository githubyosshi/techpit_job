Rails.application.routes.draw do
  devise_for :users
  # get 'entries/create'  #この行を削除
# ====ここから削除====
  # get 'jobs/index'
  # get 'jobs/new'
  # get 'jobs/create'
  # get 'jobs/show'
  # get 'homes/index'
# =====ここまで削除====
  root 'homes#index'
  resources :jobs, only: [:index, :new, :create, :show] do  # do追加
    resources :entries    # jobsの入れ子関係へresources :entriesとendを追加
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
