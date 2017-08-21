class StationsController < ApplicationController
  before_action :set_station, only: [:update, :edit, :destroy, :show]
  def index
    @stations = Station.all
  end
  
  def new
    @station = Station.new
  end

  def show
  end

  def edit
  end

  def update
    if @station.update(station_params)
      redirect_to stations_path
    else
      render :edit
    end
  end

  def destroy
    @station.destroy
    redirect_to stations_path
  end

  def create
    @station = Station.new(station_params)

    if @station.save
      redirect_to @station
    else
      render :edit
    end
  end

  private
  def set_station
    @station = Station.find(params[:id])
  end

  def station_params
    params.require(:station).permit([:name]).to_h
  end
end