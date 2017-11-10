class CommentsController < ApplicationController
  def create
    @image = ImagePost.find(params[:image_id])
    @comment = @image.comments.build(:text=> params[:comment][:text], :image_post_id=> @image.id, :user_id => current_user.id)
    @comment.save 
    redirect_to view_image_detail_path(:user_id => current_user.id, :image_id => @image.id)
    
  end
   def permit_comments
    params.require(:comment).permit(:text, :image_id)
  end
  
end
