Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do

<<<<<<< HEAD
    #Skills Model
    get "skills" => "skills#index"
    post "skills/" => "skills#create"
    get "skills/:id" => "skills#show"
    patch "skills/:id" => "skills#update"
    delete "skills/:id" => "skills#destroy"
=======










    
    get "/experiences" => "experiences#index"
    get "/experiences/:id" => "experiences#show"
    post "/experiences" => "experiences#create"
    patch "/experiences/:id" => "experiences#update"
    delete "/experiences/:id" => "experiences#destroy"
>>>>>>> 2335fde9b3694adcddbab6c1bbffad65d0ef1242
  end
end
