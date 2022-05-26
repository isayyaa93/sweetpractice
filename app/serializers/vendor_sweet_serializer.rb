class VendorSweetSerializer < ActiveModel::Serializer
  attributes :id, :vendor_id, :sweet_id, :price, :name
  has_many :sweets
  has_many :vendors
end
