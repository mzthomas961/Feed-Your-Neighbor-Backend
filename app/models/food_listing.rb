class FoodListing < ApplicationRecord
  belongs_to :user
  has_many :buyer_trades, class_name: 'Trades', foreign_key: 'buyer_foodListing_id'
  has_many :seller_trades, class_name: 'Trades', foreign_key: 'seller_foodListing_id'

end
