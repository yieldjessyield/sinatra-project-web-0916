class AddYelpIdColumnToBusinesses < ActiveRecord::Migration
  def change
    remove_column :businesses, :url
    add_column :businesses, :yelp_id, :string
  end
end
