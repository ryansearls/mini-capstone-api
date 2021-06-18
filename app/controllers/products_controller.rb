class ProductsController < ApplicationController

  def index
    product = Product.all
    render json: product.as_json
  end 


  def show
    product_id = params["id"]
    product = Product.find(product_id)
    render json: product.as_json
  end   
  
  def create
    product = Product.new (
      name: params["name"],
      price: params["price"],
      description: params["description"])

    product.save
    render json: product.as_json
  end 

  def update
    product_id = params[:id]
    product = Product.find_by(id: product_id)

    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.description = params["description"] || product.descrption
    product.save
    render json: product.as_json
  end   
  
  
  # def Titleist_ap2
  #   product = Product.first
  #   render json: product.as_json
  # end 
  
  # def Scotty_cameron
  #   product = Product.second
  #   render json: product.as_json
  # end 
  
  # def Taylormade_m4
  #   product = Product.third
  #   render json: product.as_json
  # end 
  
  # def titleist
  #   input = params["key"]
  #   render json: {message: "The url segmeent is #{input}."}
  # end 

  # def taylormade
    
end
