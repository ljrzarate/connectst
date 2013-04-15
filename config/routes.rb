Connectst::Application.routes.draw do
  devise_for :users

  root to: "static_pages#home"
  match "dashboard" => "dashboard#index"
  resources :activities
end
