class PieceSerializer < ActiveModel::Serializer
  attributes :id, :name, :composer, :period, :length, :key, :like
  has_many :comments
end
