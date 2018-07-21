class PoemSerializer < ActiveModel::Serializer
  attributes :id, :url
  has_one :user
end
