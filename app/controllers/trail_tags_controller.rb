class TrailTagsController < ApplicationController
  before_action :set_trail_tag, only: %i[ show update destroy ]

  # GET /trail_tags
  def index
    @trail_tags = TrailTag.all

    render json: @trail_tags
  end

  # GET /trail_tags/1
  def show
    render json: @trail_tag
  end

  # POST /trail_tags
  def create
    @trail_tag = TrailTag.new(trail_tag_params)

    if @trail_tag.save
      render json: @trail_tag, status: :created, location: @trail_tag
    else
      render json: @trail_tag.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trail_tags/1
  def update
    if @trail_tag.update(trail_tag_params)
      render json: @trail_tag
    else
      render json: @trail_tag.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trail_tags/1
  def destroy
    @trail_tag.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trail_tag
      @trail_tag = TrailTag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trail_tag_params
      params.require(:trail_tag).permit(:trail_id, :tag_id)
    end
end
