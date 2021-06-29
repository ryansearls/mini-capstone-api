class OrdersController < ApplicationController

  def create
    product = Product.find_by(id: params[:product_id])
    order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: product.price * params[:quantity].to_i,
      tax: product.tax,
      total: params[:total]
    )
     
    if order.save
      render json: order.as_json
    else
      render json: {errors: order.errors.full_messages},
      status: 422
    end   
  end

  def index
    order = Order.all
    render json: order.as_json
  end 
  
  def show 
    order = Order.find(params[:id])
    render json: order.as_json
  end 
  
  
  




end
