class PlantBoardsController < ApplicationController
  def index
    @plant_boards = PlantBoard.includes(:user)
  end
end
