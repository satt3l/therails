class TrainsController < ActionController
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
    if @train.save(train_params)
      redirect_to @train
    else
      render :edit
    end
  end

  def destroy
    @train.destroy
    redirect_to trains_path
  end

  private
  def set_train
    @train = Train.find(params[:id])
  end

  def train_params
    params.require(:train).permit(:name)
  end
end