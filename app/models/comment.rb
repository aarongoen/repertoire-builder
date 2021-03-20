class Comment < ApplicationRecord
    include ActiveModel::Serialization 
    belongs_to :piece
end





 