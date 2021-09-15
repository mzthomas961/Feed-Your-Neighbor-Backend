class Trade < ApplicationRecord
  belongs_to :buyer_foodListing, class_name: 'FoodListing'
  belongs_to :seller_foodListing, class_name: 'FoodListing'
end
