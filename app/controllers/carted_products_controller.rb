class CartedProductsController < ApplicationController

  def create
    carted_product = CartedProduct.new(
      product_id: params["product_id"],
      quantity: params["quantitiy"],
    )
    carted_product.save
    render json: carted_product
    
  end   
end
