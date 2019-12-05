class CommentsController < ApplicationController

    def create
        @message = Message.find(params[:message_id])
        @comment = @message.comments.create(comment_params)
        @comment.user_id = current_user.id
        puts @comment

        if @comment.save
            redirect_to message_path(@message)
        else
            render 'new'
        end
    end
    private
    def comment_params
        return params.require(:comment).permit(:content)
    end
end
