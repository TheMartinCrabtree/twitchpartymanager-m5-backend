class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :subscriber, :follower, :administrator
end
