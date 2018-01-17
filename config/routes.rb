Rails.application.routes.draw do
  root 'welcome#index'

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  resources :posts
  resources :bulletin do
    resources :posts
  end

#get 'welcome/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
