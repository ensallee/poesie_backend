class PoemSerializer < ActiveModel::Serializer
  attributes :id, :body, :title
  has_one :user
end
