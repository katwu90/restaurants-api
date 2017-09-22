class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :neighborhood
  has_one :user
end
