class FriendSerializer < ActiveModel::Serializer
  attributes :id, :friend_id, :title, :description, :evaluation, :points

  has_many :actions
end
