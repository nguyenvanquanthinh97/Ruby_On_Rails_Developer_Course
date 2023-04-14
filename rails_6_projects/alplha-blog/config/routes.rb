Rails.application.routes.draw do
  root("pages#home")
  get("about", to: "pages#about")
  resources(:articles)
  get "signup", to: "users#signup"
  resources :users, except: [:new]
  get "signin", to: "sessions#signin"
  post "signin", to: "sessions#create"
  delete "signout", to: "sessions#destroy"
end
