Rails.application.routes.draw do
  resources :posts
	root to:'posts#index'
  get 'posts/homework'
  get 'posts/job'
  get 'posts/other'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks',registrations: 'users/registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
