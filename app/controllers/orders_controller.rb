class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    # product = Product.find_by(id: params[:product_id])
    
    carted_products = current_user.carted_products.where(status: "carted")
    render json: carted_products

    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.quantity * carted_product.product.price
    end 
    
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax


    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
     
    if order.save
      carted_products.update_all(status: "purchased", order_id: order.id)
      render json: order.as_json
    else
      render json: {errors: order.errors.full_messages},
    end   
  end
3
  def index
      orders = current_user.orders
      render json: orders.as_json
  end   
  
  def show 
    order = current_user.orders.find_by(:id params[:id])
    render json: order.as_json
  end 

  
  
  




end
