Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories
  resources :organizations

  resources :categories do
    resources :organizations
  end

  resources :organizations do
    resources :categories
  end

  # resources :reviews, only [:create, :destroy]
end
