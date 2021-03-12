class Piece < ApplicationRecord
    has_many :comments

    # attr_accessor :name, :composer, :length, :key, :period, :like, :comments
    
    # def initialize
    #     @all << self
    # end

    # def self.all
    #     @all
    # end

    # def self.new_from_IMSLP(url)
    #     piece = Piece.new

    #     piece
    # end
end
