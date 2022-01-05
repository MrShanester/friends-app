class FriendSerializer < ActiveModel::Serializer
  attributes :id, :name, :friend_score

  has_many :actions
end
