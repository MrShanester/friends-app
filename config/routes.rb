Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/friends" => "friends#index"
  get "/friends/:id" => "friends#show"
  post "/friends" => "friends#create"
  patch "/friends/:id" => "friends#edit"
  delete "/friends/:id" => "friends#destroy"
end
