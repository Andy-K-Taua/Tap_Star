Rails.application.routes.draw do

    resources :places
    resources :photos
    resources :users

    root to: 'places#index'

    # log in and log out routes
    get '/login' => 'session#new'        # shows the login form
    post '/login' => 'session#create'    # above form submits here, performs login, redirects
    delete '/login' => 'session#destroy' # logout link goes here, perform logout, redirect



end
