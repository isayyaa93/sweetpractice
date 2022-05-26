class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  has_many :sweets
end
