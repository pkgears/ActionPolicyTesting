Rails.application.routes.draw do
  root "posts#index"
  resources :posts do
    get 'change_user' => 'posts#change_user', on: :member
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
