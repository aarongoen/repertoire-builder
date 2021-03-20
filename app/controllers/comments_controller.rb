class CommentsController < ApplicationController

    def create
        # binding.pry
        comment = Comment.new(comment_params)
        if comment.valid?
            comment.save
            render json: comment
        else
            render json: {errors: comment.errors.messages }, status: 422
        end
    end

    def index
        comments = Comment.all
        render json: comments
    end

    def destroy
        comment = Comment.find(params[:id])
        if comment.destroy 
            render json: {id: comment.id}
        end
    end
    
    private

    def comment_params
        params.require(:comment).permit(:text, :piece_id)
    end


end
