class FriendSerializer < ActiveModel::Serializer
  attributes :id, :name, :score

  has_many :actions
end
