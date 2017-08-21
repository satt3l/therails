class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :edit, :update, :destroy]
  def index
    @routes = Route.all
  end

  def new
    @route = Route.new
  end
  
  def create
    @route = Route.new(route_params)

    if @route.save
      redirect_to routes_path
    else
      render :new
    end
  end

  def update
    if @route.update(route_params)
      redirect_to routes_path
    else
      render :edit
    end
  end

  def show
  end

  def edit
  end

  def destroy
    @route.destroy
    redirect_to routes_path
  end

  private
  def set_route
    @route = Route.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:name, station_ids: [], train_ids: [])
  end
end