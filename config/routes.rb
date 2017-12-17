Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :jobs, only: [:create] do
    member do
      get 'status'
      get 'results'
    end
  end
end
