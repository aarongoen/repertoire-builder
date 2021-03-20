class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :piece_id
end
