class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    # @heroines = Heroine.search(params[:search])
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to @heroine
    else
      render :new
    end
  end

  def edit
    @heroine = Heroine.find(params[:id])
  end

  def update
    @heroine = Heroine.find(params[:id])
    @heroine.update(heroine_params)
    redirect_to @heroine
  end

  def destroy
    @heroine = Heroine.find(params[:id])
    @heroine.destroy
    redirect_to @heroine
  end


  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id, :search)
  end

end
