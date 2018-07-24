class PoemSerializer < ActiveModel::Serializer
  attributes :id, :url, :likes_count
  has_one :user
end
