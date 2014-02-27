JustinBrazilianCookery::Application.routes.draw do
  resources :chefs
  resources :recipes
  resources :users, only: [:new, :create]

  root "staticpages#home"
  get "/about" => "staticpages#about"

end
