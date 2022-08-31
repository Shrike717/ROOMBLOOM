class MoodboardsController < ApplicationController
  before_action :set_moodboard, only: %i[ show new create edit update destroy]

  def index
    # @moodboards = Moodboard.all
    # @random_sofas_item = Item.where(category: "Sofas").sample
    # @random_chairs_item = Item.where(category: "Chairs").sample
    # @random_rugs_item = Item.where(category: "Rugs").sample
  end

  def show
    @random_sofas_item = Item.where(category: "Sofas").sample
    @random_chairs_item = Item.where(category: "Chairs").sample
    @random_rugs_item = Item.where(category: "Rugs").sample
    @random_coffee_tables_item = Item.where(category: "Coffee Tables").sample
    @random_lights_item = Item.where(category: "Lights").sample
  end

  def new
    # @random_sofas_item = Item.where(category: "Sofas").sample
    @moodboard = Moodboard.new
  end

  def create
    @moodboard = Moodboard.new(moodboard_params)
    @moodboard.user = current_user

    if @rmoodboard.save
      redirect_to moodboard_path(@moodboard)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_moodboard
    @moodboard = Moodboard.find(params[:moodboard_id])
   end


 def moodboard_params
   params.require(:moodboard).permit(:name)
 end


end
