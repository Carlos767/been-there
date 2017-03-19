class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comments = @article.comments

    @comment = Comment.new( comment_params)
    @comment.user = current_user
    @comment.article = @article
    @new_comment = Comment.new

    authorize @comment

    if @comment.save
      flash[:notice] = "Comment created successfully"
    else
      flash[:error] = "Comment failed to create. Please try again."
    end

    respond _to do |format|
      format.html
      format.js
    end
  end 

  def destroy
     
     @article = Article.find(params[:article_id])
     @comment = @article.comments.find(params[:id])
 
     authorize @comment
     if @comment.destroy
       flash[:notice] = "Comment was removed."
     else
       flash[:error] = "Comment couldn't be deleted. Try again."
     end
     
     respond_to do |format|
      format.html
      format.js
    end
   end


  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
end
