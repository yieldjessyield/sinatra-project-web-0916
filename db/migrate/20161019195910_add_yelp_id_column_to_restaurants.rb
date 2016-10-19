class AddYelpIdColumnToRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :url
    add_column :restaurants, :yelp_id, :string
  end
end
