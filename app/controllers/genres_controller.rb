class GenresController < ApplicationController
  # def index
  # end
  #
  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def gerne_params(*args)
    params.require(:genre).permit(*args)
  end

end
