class RoutesController < ApplicationController
  before_action :set_route, only: [:destroy, :show, :edit, :update]

  def index
    @routes = Route.all
  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)

    if @route.save
      redirect_to @route
    else
      render new_route_path
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

  def update
    if @route.update(route_params)
      redirect_to @route
    else
      render edit_routes_path(@route)
    end
  end

  private
  def set_route
    @route = Route.find(params[:id])
  end

  def route_params
    params.require(:route).permit(:name)
  end
end