class CamerasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_camera, only: [:show, :edit, :update, :destroy]

  def index
    @cameras = policy_scope(Camera).order(created_at: :desc)
    @markers = @cameras.map do |camera|
      {
        lat: camera.latitude,
        lng: camera.longitude
      }
    end
  end

  def show
    authorize @camera
  end

  def new
    @camera = Camera.new
    authorize @camera
  end

  def create
    @camera = Camera.new(camera_params)
    authorize @camera
    @camera.user = current_user
    @camera.save ? (redirect_to root_path) : (render :new)
  end

  def edit
    @camera = Camera.find(params[:id])
    authorize @camera
  end

  def update
    @camera.update(camera_params) ? (redirect_to camera_path(@camera)) : (render :new)
    authorize @camera
  end

  def delete
    # TODO
  end

  private 

  def camera_params
    params.require(:camera).permit(:title, :description, :address, :price_per_day, :category, :extras, :rating, :photo)
  end

  def set_camera
    @camera = Camera.find(params[:id])
  end
end
