class TilesController < ApplicationController
  before_action :find_tile, only: [:show, :edit, :update, :destroy]
  
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
      flash.now[:danger] = @tile.errors.full_messages.join(", ")
      render :new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
    def tile_params
      params.require(:tile).permit(:picture, :description)
    end
    
    def find_tile
      @tile = Tile.find(params[:id])
    end
end
