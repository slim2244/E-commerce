class PicsController < ApplicationController
  def create
    @picture = Picture.find(params[:picture_id])
    @picture.pic.attach(params[:pic])
    
   redirect_to(picture_path(@picture))
  end
end
