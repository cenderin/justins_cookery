JustinBrazilianCookery::Application.routes.draw do
  resources :chefs
  resources :recipes
  root "static_pages#home"

  get "/" => "staticpages#home"

  get "/about" => "staticpages#about"

end
