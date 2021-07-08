class CartedProductsController < ApplicationController

  def create
    if current_user 
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: "carted",

    )
    carted_product.save
    render json: carted_product

    else 
      render json: [], status: :unauthorized

    end

  end   

  def index 
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products
  end   

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    render json: {message: "Carted product gone!"}
  end   


end
