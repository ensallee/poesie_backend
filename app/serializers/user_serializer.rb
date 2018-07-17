class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :display_name, :hometown, :bio
end
