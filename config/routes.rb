Rails.application.routes.draw do
  #devise_for :users, controllers: {
  #      sessions: 'users/sessions'
  #    }

  root to: "home#index"
  devise_for :users, :paths => 'users' 
  #do
  resource :user do
   resource :image_posts
  end
  
  match '/user/image_posts/:id' => 'image_posts#show', via: [:get, :post], as: :view_image
end
