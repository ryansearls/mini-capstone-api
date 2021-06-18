Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get "/all_products", controller: "products", action: "all_products"

  # get "/first_product", controller: "products", action: "Titleist_ap2"

  # get "/second_product", controller: "products", action: "Scotty_cameron"

  # get "/third_product", controller: "products", action: "Taylormade_m4"

  
  get "/taylormade_path" => "products#taylormade" #url query parameter
  
  get "/first_product/:key" => "products#titleist" #url segment parameter

  get "/products", controller: "products", action: "index"

  get "products/:id", controller: "products", action: "show"

  post "/products/:id", controller: "products", action: "create"

  patch "/products/:id", controller: "products", action: "update"
  
end
