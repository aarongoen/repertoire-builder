class CommentsController < ApplicationController

    def index
        comments = Item.all
        render json :comments
    end
    
end
