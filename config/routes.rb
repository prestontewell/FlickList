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

    get '/titles' => 'titles#index'
    get '/titles/:id' => 'titles#show'

    get '/comments' => 'comments#index'
    post '/comments' => 'comments#create'
    get '/comments/:id' => 'comments#show'

    get '/lists' => 'lists#index'
    post '/lists' => 'lists#create'
    get '/lists/:id' => 'lists#show'
    delete '/lists/:id' => 'lists#destroy'

    get '/list_users' => 'list_users#index'
    post '/list_users' => 'list_users#create'

    get 'list_titles' => 'list_titles#index'
    post 'list_titles' => 'list_titles#create'
    patch 'list_titles/:id' => 'list_titles#update'

  end
end
