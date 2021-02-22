Rails.application.routes.draw do
  devise_for :users
  root 'posts#main'
  get 'posts/about'
  get 'posts/history'
  get 'recipes/index'
  get 'recipes/result'
  resources :recipes do
     resources :comments
  end
  get 'categories/index'
  resources :categories do
     resources :masseges
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
