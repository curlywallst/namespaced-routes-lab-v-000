Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end

  namespace :admin do
    resources :preferences, only: [:index, :update]
    #  get "preferences/edit" => "preferences#edit", as: "edit_preferences"
    #  patch "preferences" => "preferences#update", as: "update_preferences"

  end

  resources :songs

end
