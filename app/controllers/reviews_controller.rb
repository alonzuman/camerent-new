class ReviewsController < ApplicationController

  def new

  end

  def create
    @camera = Camera.find(params[:camera_id])
    @review = Review.new(review_params)
    @review.camera = @camera
    if @review.save
      redirect_to camera_path(@camera)
    else
      render 'cameras/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
