class VineyardsController < ApplicationController
  before_action :set_vineyard, only: [:show, :update, :destroy]

  # GET /vineyards
  def index
    @vineyards = Vineyard.all

    render json: @vineyards
  end

  # GET /vineyards/1
  def show
    render json: @vineyard
  end

  # POST /vineyards
  def create
    @vineyard = Vineyard.new(vineyard_params)
    # @vineyard = Vineyard.new(Uploader.upload(vineyard_params))

    if @vineyard.save
      render json: @vineyard, status: :created, location: @vineyard
    else
      render json: @vineyard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vineyards/1
  def update
    if @vineyard.update(vineyard_params)
      render json: @vineyard
    else
      render json: @vineyard.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vineyards/1
  def destroy
    @vineyard.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vineyard
      @vineyard = Vineyard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vineyard_params
      params.require(:vineyard).permit(:vineyard_name, :email, :website_url, :phone, :address, :city, :region, :postcode, :country, :specialty, :description, :pet_friendly, :holiday, :tours, :events, :family_friendly, :cover_image, :image_one, :image_two, :image_three, :image_four, :user_id)
    end
end
