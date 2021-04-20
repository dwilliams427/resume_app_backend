Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/capstones" => "capstones#index"
    get "/capstones/:id" => "capstones#show"
    post "/capstones" => "capstones#create"
    patch "/capstones/:id" => "capstones#update"
    delete "/capstones/:id" => "capstones#destroy"
    # student-model
    get "/students" => "students#index"
    get "/students/:id" => "students#show"
    put "/students" => "students#create"
    patch "/students/:id" => "students#update"
    delete "/students/:id" => "students#destroy"

    #Skills Model
    get "skills" => "skills#index"
    post "skills/" => "skills#create"
    get "skills/:id" => "skills#show"
    patch "skills/:id" => "skills#update"
    delete "skills/:id" => "skills#destroy"

    #EDUCATION ROUTES
    get "/education", controller: "education", action: "index"
    get "/education/:id", controller: "educatio   n", action: "show"
    post "/education", controller: "education", action: "create"
    patch "/education/:id", controller: "education", action: "update"
    delete "/education/:id", controller: "education", action: "destroy"
  end
end
