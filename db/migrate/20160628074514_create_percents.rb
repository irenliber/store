class CreatePercents < ActiveRecord::Migration
  def change
    create_table :percents do |t|
      t.integer :value

      t.timestamps null: false
    end
  end
end
