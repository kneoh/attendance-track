Rails.application.routes.draw do
  resources :handouts
  get 'new/event_id/:event_id' => 'trainers#new', as: :new_trainer_event
  resources :trainers
  resources :privileges
  resources :users
  resources :roles
  resources :topics
  get 'new/event_id/:event_id' => 'sessions#new', as: :new_session_event
  resources :sessions
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
