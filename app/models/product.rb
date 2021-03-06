class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, presence: true
  validates :active, presence: true

  belongs_to :supplier
  has_many :carted_products
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  

  
  def is_discounted?
    price <= 10
  end   

  def tax
    price * 0.09
  end 

  def total 
    price + tax
  end 


end
