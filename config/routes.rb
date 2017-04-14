Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  resources :workouts, except: [:new, :edit]

  get 'workouts/search/:term', to: 'workouts#search'
end
