class VineyardsController < ApplicationController
  before_action :set_vineyard, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /vineyards
  def index
    @vineyards = Vineyard.all

    render json: @vineyards
  end

  # GET /vineyards/1
  def show
    render json: @vineyard
  end

  # POST /vineyards logged in user can create their own vineyard
  def create
    # @vineyard = Vineyard.new(vineyard_params)

    @vineyard = Vineyard.new(vineyard_params)
    @vineyard.user = current_user

    if @vineyard.save
      render json: @vineyard, status: :created, location: @vineyard
    else
      render json: @vineyard.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vineyards/1 logged in user can update and edit their own vineyard
  def update

    if @vineyard.user == current_user
      if @vineyard.update(vineyard_params)
        render json: @vineyard
      else
        render json: @vineyard.errors, status: :unprocessable_entity
      end
    else
      render json: { errors: ["Unauthorized"] }, status: 401
    end
  end

  # DELETE /vineyards/ logged in users can delete their own vineyard
  def destroy
    if @vineyard.user == current_user || !@vineyard.user
    @vineyard.destroy
    else
      render json: { errors: ["Unauthorized"] }, status: 401
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vineyard
      @vineyard = Vineyard.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vineyard_params
      params.permit(:vineyard_name, :email, :website_url, :phone, :address, :city, :region, :postcode, :country, :specialty, :description, :pet_friendly, :holiday, :tours, :events, :family_friendly, :cover_image, :image_one, :image_two, :image_three, :image_four, :user_id, :base64)
    end
end
