class ArtistsController < ApplicationController
  # def index
  # end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    redirect_to :artist_path(@artist)
  end

  def edit
  end

  def update
  end

  private
  def artist_params(*args)
    params.require(:artist).permit(*args)
  end

end
