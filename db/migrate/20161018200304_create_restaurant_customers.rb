class CreateRestaurantCustomers < ActiveRecord::Migration
  def change
    create_table (:restaurant_customers) do |t|
      t.integer :customer_id
      t.integer :restaurant_id
    end
  end
end
