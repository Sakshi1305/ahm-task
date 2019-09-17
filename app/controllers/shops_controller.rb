class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(permitted_shop_params)
    if @shop.save
      redirect_to @shop
    else
      render 'new'
    end
  end

  def show
    @shop = Shop.find(params[:id])
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.find(params[:id])
    if @shop.update_attributes(permitted_shop_params)
      redirect_to @shop
    else
      render 'edit'
    end
  end

  private
  def permitted_shop_params
    params.require(:shop).permit(:name, :shop_no, :address);
  end
end
