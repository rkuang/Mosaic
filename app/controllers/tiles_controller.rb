class TilesController < ApplicationController
  before_action :find_tile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  before_action :owned_tile, only: [:edit, :update, :destroy]
  
  def index
    @all_tiles = Tile.all
  end
  
  def new
    @tile = current_user.tiles.build
  end
  
  def create
    @tile = current_user.tiles.build(tile_params)
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
    if @tile.update(tile_params)
      flash[:info] = "Your Tile was updated!"
      redirect_to tile_path(@tile)
    else
      flash.now[:danger] = @tile.errors.full_messages.join(", ")
      render :edit
    end
  end
  
  def destroy
    @tile.destroy
    redirect_to tiles_path
  end
  
  private
    def tile_params
      params.require(:tile).permit(:picture, :description)
    end
    
    def find_tile
      @tile = Tile.find(params[:id])
    end
    
    def owned_tile
      if @tile.user != current_user
        flash[:danger] = "This Tile doesn't belong to you."
        redirect_to tile_path(@tile)
      end
    end
end
