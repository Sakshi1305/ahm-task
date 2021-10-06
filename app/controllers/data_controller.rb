class DataController < ApplicationController
  def create
    @shop = Shop.find(params[:id])
    @shop_data = @shop.data.new(permitted_data_params)
    respond_to do |format|
      if @shop_data.save
        format.html {redirect_to @shop, notice: 'Data was successfully created.' }
        format.js
        format.json { render json: @shop, status: :created, location: @shop}
      else
        binding.pry
        format.html { render 'shops/show' }
        format.json { render json: @shop_data.errors, status: :unprocessable_entity }
        # format.js
      end
    end
    # if @shop.data.create!(permitted_data_params)
    #   redirect_to @shop
    # else
    #   render 'new'
    # end
  end

  private
  def permitted_data_params
    params.require(:datum).permit(:name, :message);
  end
end
