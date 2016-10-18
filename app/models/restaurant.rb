class Restaurant < ActiveRecord::Base

  has_many :restaurant_customers
  has_many :customers, through: :restaurant_customers

end
