Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shops#index'
  resources :shops do
    member do
      post 'data', to: 'data#create'
    end
  end
end
