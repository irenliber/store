class AddProductCodeToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :product_code, :string
    add_column :orders, :product_title, :string
  end
end
