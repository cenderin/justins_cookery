JustinBrazilianCookery::Application.routes.draw do
  resources :chefs
  resources :recipes

  get "/" => "staticpages#home"
  get "/about" => "staticpages#about"

end