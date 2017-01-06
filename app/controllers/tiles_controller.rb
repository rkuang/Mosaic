class TilesController < ApplicationController
  def index
    @all_tiles = Tile.all
  end
  
  def new
    @tile = Tile.new
  end
  
  def create
    @tile = Tile.create(tile_params)
    redirect_to tiles_path
  end
  
  private
    def tile_params
      params.require(:tile).permit(:picture, :description)
    end
end
