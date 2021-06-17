class ProductsController < ApplicationController

  # def all_products
  #   product = Product.all
  #   render json: product.as_json
  # end 
  
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
  
  def titleist
    input = params["key"]
    render json: {message: "The url segmeent is #{input}."}
  end 

  def taylormade
    
end
