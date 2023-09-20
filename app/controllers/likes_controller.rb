class LikesController < ApplicationController
 
   def create
     like = current_user.likes.create(kokkyo_id: params[:kokkyo_id])
     redirect_back(fallback_location: root_path)
   end
   
   def destroy
     like = Like.find_by(kokkyo_id: params[:kokkyo_id], user_id: current_user.id)
     like.destroy
     redirect_back(fallback_location: root_path)
   end

end
