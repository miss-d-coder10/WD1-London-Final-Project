class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  # GET /comments
  def index
    @comments = Comment.all

    render json: @comments
  end

  # GET /comments/1
  def show
    render json: @comment
  end

  # POST /comments
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  def update
    if @comment.user == current_user

      if @comment.update(comment_params)
        render json: @comment
      else
        render json: @comment.errors, status: :unprocessable_entity
      end

    else
      render json: { errors: ["Unauthorized"] }, status: 401
    end
  end


  # DELETE /comments/1
  def destroy
    if @comment.user == current_user || !@comment.user
    @comment.destroy
    else
      render json: { errors: ["Unauthorized"] }, status: 401
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:rating, :body, :user_id, :vineyard_id)
    end
end
