class CamerasController < ApplicationController
  before_action :set_camera, only: [:show, :edit, :update, :destroy]

  def index
    @cameras = Camera.all
  end

  def show
    @camera = Camera.find(params[:id])
  end

  def new
    @camera = Camera.new
  end

  def create
    @camera = Camera.new(camera_params)
    @camera.user = current_user
    @camera.save ? (redirect_to root_path) : (render :new)
  end

  def edit
    @camera = Camera.find(params[:id])
  end

  def update
    @camera.update(camera_params) ? (redirect_to camera_path(@camera)) : (render :new)
  end

  private 

  def camera_params
    params.require(:camera).permit(:title, :description, :address, :price_per_day, :category, :extras, :rating, :photo)
  end

  def set_camera
    @camera = Camera.find(params[:id])
  end
end
