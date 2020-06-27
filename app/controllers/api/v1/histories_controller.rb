class Api::V1::HistoriesController < ApplicationController
  before_action :set_history, only: [:show, :update, :destroy]
  
  def index
    @histories = History.all
    render json: @histories
  end

  def show
    render json: @history
  end

  def create
    if @history.create(history_params)
      render json: @history
    else
      render json: {message: "History not created."}
    end
  end

  def update
    if @history.update(history_params)
      render json: @history
    else
      render json: {message: "History not updated."}
    end
  end
  
  def destroy
    render json: @history
  end
  
  private
  def history_params
    params.require(:history).permit(:user_id, :tag_id, :board_id, :resource_id, :diet_id, :meal_id, :recipe_id, :document_id, :treatment_id, :step_id, :medication_id, :supplement_id, :playlist_id, :event_id)
  end
  
  def set_history
    @history = History.find(params[:id])
  end
end
