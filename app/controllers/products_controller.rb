class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]
  
  #used to show all
  def index
    if category = params[:category]
      category = Category.find_by(id: params[:category])
      
    else  
    product = Product.all
    end
    render json: product
  end 

  # used to add new to index
  def create
      product = Product.new(
        name: params[:name],
        price: params[:price],
        image_url: params[:image_url],
        description: params[:description],
        supplier_id: params[:supplier_id]
      )

      
      if product.save
         render json: product.as_json
      else
        render json: {errors: product.errors.full_messages},
        status: 422
      end      
  end 
  # used to show specific one
  def show
    product_id = params["id"]
    product = Product.find(product_id)
    render json: product

  end   
  
  # used to change an existing
  def update
    product = Product.find_by(id: params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    
    if product.save
    render json: product.as_json
    else
      render json: {errors: product.errors.full_messages},
      status: :unprocessable_entity  #<- key in rails to show error message 422
    end
  end
  
  #used to destroy
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
