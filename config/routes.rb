Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :letters
  root 'letters#index'
  get '/new' => "letters#show"
end