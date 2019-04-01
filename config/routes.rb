Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do

    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    get '/users' => 'users#index'
    patch '/users/:id' => 'users#update'

    post '/sessions' => 'sessions#create'

    get '/titles/:id' => 'titles#show'
    get '/titles' => 'titles#index'

  end
end
