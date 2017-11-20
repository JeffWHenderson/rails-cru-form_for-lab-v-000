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
    @song = Song.create(song_params(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
  end

  def update
  end

  private
    def song_params(*args)
      params.require(:song).permit(*args)
    end

end
