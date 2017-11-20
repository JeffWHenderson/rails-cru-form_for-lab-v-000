class GenresController < ApplicationController
  # def index
  # end
  # 
  def show
    @genre = Genre.find(params[:id])
  end
  
  def new
  end
  
  def create
  end
  
  def edit
  end
  
  def update
  end
  
end
