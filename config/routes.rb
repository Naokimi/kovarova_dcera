Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :adventures, only: %i[index show new create edit update] do
    resources :player_characters, only: %i[new create]
    # resources :non_player_characters
  end
end
