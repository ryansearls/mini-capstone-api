class OrdersController < ApplicationController

  def create
    product = Product.find_by(id: params[:product_id])
    calculated_subtotal = product.price * params[:quantity].to_i
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax


    order = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
     
    if order.save
      render json: order.as_json
    else
      render json: {errors: order.errors.full_messages},
      status: 422
    end   
  end
3
  def index
    if current_user
      orders = current_user.orders
      render json: orders.as_json
    else 
      render json: [], status: :unauthorized 
    end 
  end   
  
  def show 
    order = current_user.orders.find_by(:id params[:id])
    render json: order.as_json
  end 

  
  
  




end
