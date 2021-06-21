class ProductsController < ApplicationController

  def index
    product = Product.all
    render json: product
  end 


  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description])

    product.save
    render json: product
  end 

  def show
    product_id = params["id"]
    product = Product.find(product_id)
    render json: product

  end   
  

  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.save
    render json: product.as_json
  end   
  

  def destroy
    product = Product.find_by(id: params[:id])
    product.destroy
    render json: {message: "Product is destroyed"}
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
