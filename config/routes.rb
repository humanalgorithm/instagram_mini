Rails.application.routes.draw do
  #devise_for :users, controllers: {
  #      sessions: 'users/sessions'
  #    }

  root to: "home#index"
  devise_for :users, :paths => 'users' 
  #do
  
  match '/user/:user_id/image_posts/new' => 'image_posts#new', via: [:get], as: :new_image
  match '/user/:user_id/image_posts/' => 'image_posts#create', via: [:post], as: :create_image
  match '/user/:user_id/image_posts/' => 'image_posts#show', via: [:get], as: :view_images
  match '/user/:user_id/image_posts/:image_id' => 'image_posts#show', via: [:get, :post], as: :view_image
  match '/user/:user_id/image_posts/:image_id' => 'image_posts#destroy', via: [:delete], as: :delete_image
  
  match '/user/:user_id/image_posts/:image_id/comment' => 'comments#create', via: [:get, :post], as: :add_comment
  
  
end
