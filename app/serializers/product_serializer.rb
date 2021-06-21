class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :img_url, :description, :is_discounted?, :tax, :total
end 
  
