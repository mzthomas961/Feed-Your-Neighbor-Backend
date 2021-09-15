class FoodListingSerializer < ActiveModel::Serializer
  attributes :id, :name, :cuisine, :description, :image
  belongs_to :user
  
end
