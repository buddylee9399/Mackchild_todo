Rails.application.routes.draw do
  resources :todo_lists do 
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end
  root to: 'todo_lists#index'
  
  get   'about', to: 'static_pages#about'
  get   'contact', to: 'static_pages#contact'
  get   'privacy', to: 'static_pages#privacy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
