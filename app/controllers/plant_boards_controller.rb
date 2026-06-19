class PlantBoardsController < ApplicationController
  def new
    @plant_board = current_user.plant_boards.build
  end

  def create
    @plant_board = current_user.plant_boards.build(plant_board_params)
    if @plant_board.save
      redirect_to plant_boards_path
    else
      render :new
    end
  end

  def index
    @plant_boards = current_user.plant_boards.order(created_at: :desc) 
  end

  def show
    @plant_board = current_user.plant_boards.find(params[:id])
    @plants = @plant_board.plants.order(created_at: :desc)
  end

  private

  def plant_board_params
    params.require(:plant_board).permit(:plant_name, :body, :plant_board_image, :plant_board_image_cache)
  end

end
