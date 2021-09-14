Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories
  resources :organizations
  resources :reviews

  resources :categories do
    resources :organizations
  end

  resources :organizations do
    resources :categories
  end

 
  resources :organizations do
    resources :reviews
  end

  resources :reviews do
    resources :organizations
  end

  root to: proc { [200, {}, ['']] }
end
