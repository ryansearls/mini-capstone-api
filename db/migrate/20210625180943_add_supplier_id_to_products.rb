class AddSupplierIdToProducts < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :supplier_id, :integer
  end
end
