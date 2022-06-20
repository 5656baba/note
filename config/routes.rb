Rails.application.routes.draw do
  root to: 'notes#top'
  resources :sentences, only: [:create, :new, :show, :edit, :destroy, :update]
  resources :genres, only: [:create, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
