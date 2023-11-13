class CommentsController < ApplicationController
    def index
        @comments = Comment.all 
    end 

    def new 
    end 

    def create 
        @comment = Comment.create(comment_params)
        @comment.user_id = current_user.id 
        @comment.movie_id = params[:comment][:movie_id]
        @comment.save
        redirect_to "/movies/#{@comment.movie_id}"
    end 

    def destroy 
        @comment = Comment.find(params[:id])
        @comment.destroy 
        redirect_to movies_path
    end

    private 
        def comment_params 
            params.require(:comment).permit(:content)
        end
end
