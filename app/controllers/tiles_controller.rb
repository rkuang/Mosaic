class TilesController < ApplicationController
  def index
    @all_tiles = Tile.all
  end
  
  def new
    @tile = Tile.new
  end
  
  def create
    @tile = Tile.new(tile_params)
    if @tile.save
      flash[:success] = "Your Tile was created!"
      redirect_to tiles_path
    else
      flash[:danger] = @tile.errors.full_messages.join(", ")
      render :new
    end
  end
  
  private
    def tile_params
      params.require(:tile).permit(:picture, :description)
    end
end
