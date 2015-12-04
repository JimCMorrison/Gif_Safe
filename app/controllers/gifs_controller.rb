class GifsController < ApplicationController
  before_action :find_gif, only: [:show, :edit, :update, :destroy]
  def index
    @gifs = Gif.all.order("created_at DESC")
  end

  def show
  end

  def new
    @gif = Gif.new
  end

  def create
    @gif = Gif.new(gif_params)
    if @gif.save
      redirect_to @gif
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_gif
    @gif = Gif.find(params[:id])
  end

  def gif_params
    params.require(:gif).permit(:tag, :url, :description)
  end
end