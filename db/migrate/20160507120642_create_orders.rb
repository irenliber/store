class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :phone
      t.string :name
      t.boolean :done

      t.timestamps null: false
    end
  end
end
