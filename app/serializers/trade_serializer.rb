class TradeSerializer < ActiveModel::Serializer
  attributes :id
  has_one :buyer_foodListing
  has_one :seller_foodListing
end
