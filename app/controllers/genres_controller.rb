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
    @genre = Genre.create(genre_params(:name))
    
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
