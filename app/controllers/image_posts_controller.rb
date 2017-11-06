class ImagePostsController < ApplicationController
  def create
    @image = current_user.image_posts.build(permit_image_post)

    if @image.save
      flash[:success] = "Success!"
      redirect_to view_image_path(@image.id)
    else
      flash[:error] = @image.errors.full_messages
      redirect_to new_user_image_posts_path
    end
  end

  def show
    @image = ImagePost.find(params[:id])
  end

  def new
    @image_post = ImagePost.new
  end

  private

  def permit_image_post
    params.require(:image_post).permit(:img, :user_id)
  end

end
