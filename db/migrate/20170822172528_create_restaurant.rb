class CreateRestaurant < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :url
      t.string :address
      t.string :locality
      t.float :price_range
      t.float :rating
    end

  end
end
