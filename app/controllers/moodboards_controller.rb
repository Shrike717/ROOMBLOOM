class MoodboardsController < ApplicationController
  before_action :set_moodboard, only: %i[ show edit update destroy ]

  def index
    # @moodboards = Moodboard.all
    # @random_sofas_item = Item.where(category: "Sofas").sample
    # @random_chairs_item = Item.where(category: "Chairs").sample
    # @random_rugs_item = Item.where(category: "Rugs").sample
  end

  def show
    items = @moodboard.items
    @random_sofas_item = items.find do |item|
      item.category == "Sofas"
    end
    @random_chairs_item = items.find do |item|
      item.category == "Chairs"
    end
    @random_rugs_item = items.find do |item|
      item.category == "Rugs"
    end
    @random_coffee_tables_item = items.find do |item|
      item.category == "Coffee Tables"
    end
    @random_lights_item = items.find do |item|
      item.category == "Lights"
    end
  end

  def shuffle
    @moodboard = Moodboard.find(params[:moodboard_id])
    pins = @moodboard.pins.where(pinned: false)
    pins.each do |pin|
      pin.item = Item.where(category: pin.item.category).sample
      pin.save
    end
    redirect_to moodboard_path(@moodboard)

  end

  def new
    # @random_sofas_item = Item.where(category: "Sofas").sample
    @moodboard = Moodboard.new
  end

  def create
    @moodboard = Moodboard.new
    @moodboard.name = Moodboard.generate_name
    @moodboard.user = current_user
    if @moodboard.save
      @sofa = Item.where(category: "Sofas").sample
      @chair = Item.where(category: "Chairs").sample
      @rug = Item.where(category: "Rugs").sample
      @coffee_table = Item.where(category: "Coffee Tables").sample
      @light = Item.where(category: "Lights").sample
      Pin.create(item: @sofa, moodboard: @moodboard)
      Pin.create(item: @chair, moodboard: @moodboard)
      Pin.create(item: @rug, moodboard: @moodboard)
      Pin.create(item: @coffee_table, moodboard: @moodboard)
      Pin.create(item: @light, moodboard: @moodboard)
      redirect_to moodboard_path(@moodboard)
    else
      redirect_to root_path, status: :unprocessable_entity
    end
  end

  private

  def set_moodboard
    @moodboard = Moodboard.find(params[:id])
   end

  def moodboard_params
    params.require(:moodboard).permit(:name)
  end


end
