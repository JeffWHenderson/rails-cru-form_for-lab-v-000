class SongsController < ApplicationController
   def index
     @songs = Song.all
   end

  def show
    @song = Song.find(params[:id])
    #<%= (link_to @song.artist.name, artist_path(@song.artist)) if @song.artist %>
    #<%= (link_to @song.genre.name, genre_path(@song.genre)) if @song.genre %>
  end

  def new
    @song = Song.new
  end

  def create
  end

  def edit
  end

  def update
  end

end
