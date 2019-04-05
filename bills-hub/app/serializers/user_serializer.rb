
class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :password_digest, :location, :age, :house_size
  has_many :utilities
end
