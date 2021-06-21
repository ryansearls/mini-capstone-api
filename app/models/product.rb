class Product < ApplicationRecord

  def is_discounted?
    product = Product.price
    if product.price < 10
      return true
    else 
      return false  
    end 
  end   

  def tax
    tax = price * 0.09
    puts tax
  end 

  def total 
    total = price + price
    puts total
  end 


end
