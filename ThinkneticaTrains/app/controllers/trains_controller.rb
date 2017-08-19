class TrainsController < ApplicationController
  before_action :set_train, only: [:update, :edit, :destroy, :show]

  def index
    @trains = Train.all
  end
  
  def new
    @train = Train.new
  end

  def show
  end

  def edit
  end

  def update
    if @train.update(train_params)
      redirect_to @train
    else
      render :edit
    end
  end

  def destroy
    @train.destroy
    redirect_to trains_path
  end

  def create
    @train = Train.new(train_params)

    if @train.save
      redirect_to trains_path
    else
      render :new
    end
  end

  private
  def set_train
    @train = Train.find(params[:id])
  end

  def train_params
    params.require(:train).permit(:name, :current_station_id, :route_id)
  end
end