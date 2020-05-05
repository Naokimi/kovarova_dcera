Rails.application.routes.draw do
  get 'non_player_characters/edit'
  get 'non_player_characters/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  resources :adventures,
            only: %i[index show new create edit update],
            path_names: { edit: 'ongoing_adventure' } do
    resources :player_characters, only: %i[new create]
    resources :non_player_characters, only: %i[edit update]
  end
end
