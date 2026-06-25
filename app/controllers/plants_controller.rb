class PlantsController < ApplicationController
  before_action :set_plant_board, only: [:new, :create, ]

  def new
    @plant = @plant_board.plants.build
  end

  def create
    @plant = @plant_board.plants.build(plant_params)
    @plant.user = current_user

    if @plant.save
      redirect_to plant_board_path(@plant_board)
    else
      render :new, status: :unprocessable_entity
    end
  end


  def destroy
    plant = current_user.plants.find(params[:id])
    plant.destroy!
    redirect_to plant_board_path(plant.plant_board)
  end

  private

  def set_plant_board
    @plant_board = current_user.plant_boards.find(params[:plant_board_id])
  end

  def plant_params
    params.require(:plant).permit(:body, :plant_image, :plant_image_cache  )
  end
end
