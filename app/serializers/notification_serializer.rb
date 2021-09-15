class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :accepted, :rejected, :active
  has_one :user
  has_one :trade
end
