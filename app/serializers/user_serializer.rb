class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :following, :followers, :images, :display_name, :hometown, :bio
end
