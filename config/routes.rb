Rails.application.routes.draw do
  resources :states do
    collection do
      get 'remove_all'
    end
  end
  root 'states#index'
  get 'graphs/index', to: 'graphs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
