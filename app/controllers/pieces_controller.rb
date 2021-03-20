class PiecesController < ApplicationController
    def index
        render json: Piece.all.to_json(include: :comments)
    end

    def show
        piece = Piece.find(params[:id])
        render json: piece
    end

    def create
        piece = Piece.new(piece_params)
        if piece.save   
            render json: piece
        else
            render json: 'there is an error in json through pieces controller' 
        end
    end

    private
    def piece_params
        params.require(:piece).permit(:name, :composer, :period, :key, :length, :like, :url, :img_url)
    end
end
