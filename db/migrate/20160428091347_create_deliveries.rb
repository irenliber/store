class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
