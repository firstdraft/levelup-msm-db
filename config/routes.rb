Rails.application.routes.draw do

  get 'table/:name' => 'table#show'
  get 'table/:name/structure' => 'table#structure'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
