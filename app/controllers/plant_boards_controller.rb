class PlantBoardsController < ApplicationController
  def new
    @plant_board = PlantBoard.new
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
    @plant_boards = PlantBoard.includes(:user)
  end

  def show
  end

  private

  def plant_board_params
    params.require(:plant_board).permit(:plant_name, :body)
  end

end
