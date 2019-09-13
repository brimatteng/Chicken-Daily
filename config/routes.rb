Rails.application.routes.draw do

  get 'users/show'
  root "pages#main"

  resources :users, only: [:show] do
    resources :checkins, except: [:edit, :delete]
  end
end
