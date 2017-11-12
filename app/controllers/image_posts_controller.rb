class ImagePostsController < ApplicationController
  before_filter :authenticate_user!
  
  def create
    @image = current_user.image_posts.build(permit_image_post)

    if @image.save
      flash[:success] = "Success!"
      redirect_to view_image_detail_path(current_user.id, @image.id)
    else
      flash[:error] = @image.errors.full_messages
      redirect_to new_image_path(current_user.id)
    end
  end

  def show_detail
    @image = ImagePost.find(params[:image_id])
    if not @image
      redirect_to view_images_path(:user_id)
    end
    
  end
  
  def update_description
    description = params[:description]
    @image = ImagePost.find(params[:image_id])
    @image.description = description
    @image.save
    
    redirect_to view_image_detail_path(:user_id => params[:user_id], :image_id => params[:image_id])
    
  end
  
  def show
    if params[:image_id]
      @images = [ImagePost.find(params[:image_id])]
    else
      @user = User.find(params[:user_id])
      @images = @user.image_posts.all
    end
  end

  def new
    @image_post = ImagePost.new
  end

  def destroy
    @image = ImagePost.find(params[:image_id])
    if @image.destroy
      flash[:success] = "Image was deleted"
      redirect_to view_images_path(current_user.id)
    else
      flash[:error] = @image.errors.full_messages
      redirect_to view_images_path(current_user.id)
    end

  end
  
  private
  def permit_image_post
    params.require(:image_post).permit(:img, :user_id, :description)
  end

end
