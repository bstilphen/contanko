class TankosController < ApplicationController

  def index
    @tankos = Tanko.all
  end

  def new
    @tanko = Tanko.new
  end

  def edit
    @tanko = Tanko.find(params[:id])
  end

  def show
    @tanko = Tanko.find(params[:id])
  end

  def create
    @tanko = Tanko.new(tanko_params)
    if @tanko.save
    redirect_to @tanko
    else
    render'new'
    end
  end

  def update
    @tanko = Tanko.find(params[:id])
    if tanko.update(tanko_params)
      redirect_to @tanko
    else
      render 'edit'
    end
  end
private
  def tanko_params
    params.require(:tanko).permit(:service_name, :description)
  end
end

