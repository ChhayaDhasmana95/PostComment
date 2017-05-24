class RepliesController < ApplicationController
def edit
    @post=Post.find(params[:post_id])
    @comment = @post.comments.find(params[:comment_id])
	@reply = @comment.replies.find(params[:id])
end

def create
    @post=Post.find(params[:post_id])
    @comment = @post.comments.find(params[:comment_id])
	  @reply=@comment.replies.create(reply_params)
    redirect_to post_comment_path(@comment)
  end
  def update
  	@post=Post.find(params[:post_id])
    @comment = @post.comments.find(params[:comment_id])
	@reply = @comment.replies.find(params[:id])
	if @reply.update(reply_params)
		redirect_to comment_path(@comment) 
	else
		render 'reply/form'
	end
  end
  def destroy
    @post=Post.find(params[:post_id])
    @comment = @post.comments.find(params[:comment_id])
	@reply = @comment.replies.find(params[:id])
    @reply.destroy
    redirect_to comment_path(@comment)
  end
 
  private
    def reply_params
      params.require(:reply).permit(:title, :body)
    end
end
