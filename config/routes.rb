Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
    resources :products
  end
  resources :products do
    collection do
      get :search
    end
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
