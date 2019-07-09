Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "journals#index"

  resources :journals, only: [:index, :show, :new, :create] do
    resources :entries, only: [:new, :create]
  end

  resources :entries, only: [:index, :show]

end
