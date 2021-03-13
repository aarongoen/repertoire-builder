class PiecesController < ApplicationController
    def index
        render json: Piece.all.to_json(include: :comments)
    end

    def show
        piece = Piece.find(params[:id])
        render json: piece
    end
end
