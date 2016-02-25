class VideosController < ApplicationController
  before_action :all_videos, only: [:index, :create, :update, :destroy] 
  before_action :set_video, only: [:show, :edit, :update, :destroy]


  # GET /videos/new
  def new
    @video = Video.new
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.create(video_params)
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    @video.update(video_params)
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def all_videos
      @videos = Video.all 
    end

    def set_video
      @video = Video.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def video_params
      params.require(:video).permit(:speaker, :title, :link)
    end
end
