class AddPositionToPage < ActiveRecord::Migration
  def change
    add_column :pages, :position, :integer
    add_column :pages, :active, :boolean
    add_column :pages, :start, :boolean
  end
end
