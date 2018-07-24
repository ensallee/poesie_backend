class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :following, :followers, :display_name, :hometown, :bio
end
