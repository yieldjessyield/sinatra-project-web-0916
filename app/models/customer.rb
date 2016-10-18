class Customer < ActiveRecord::Base

  has_many :restaurant_customers
  has_many :restaurants, through: :restaurant_customers

end
