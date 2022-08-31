class MoodboardsController < ApplicationController
  before_action :set_moodboard, only: %i[ show edit update destroy ]

  def index
    @moodboards = Moodboard.all # gets all moodboards
    @pin = Pin.find(1) # This was made for testing purposes. Find pin with id 1 and test the toggle false / true in the pin update method
  end

  def show
    items = @moodboard.items # Getting all 5 items belonging to a created moodboard

    @random_sofas_item = items.find do |item| # Getting the id of the item in category Sofas. This item is displayed on showpage
      item.category == "Sofas"
    end
    @random_chairs_item = items.find do |item| # Getting the id of the item in category Chairs. This item is displayed on showpage
      item.category == "Chairs"
    end
    @random_rugs_item = items.find do |item| # Getting the id of the item in category Rugs. This item is displayed on showpage
      item.category == "Rugs"
    end
    @random_coffee_tables_item = items.find do |item| # Getting the id of the item in category Coffee Tables. This item is displayed on showpage
      item.category == "Coffee Tables"
    end
    @random_lights_item = items.find do |item| # Getting the id of the item in category Lights. This item is displayed on showpage
      item.category == "Lights"
    end
  end

  def shuffle
    @moodboard = Moodboard.find(params[:moodboard_id]) # Gets the id of the actual moodboard last created. The key is moodboard_id not just id
    pins = @moodboard.pins.where(pinned: false) # Gets all pins with item_id and moodboard_id where pinned = false. When newly created moodboard its 5 pins
    pins.each do |pin|
      pin.item = Item.where(category: pin.item.category).sample # Shuffles somehow but i don't get this. Ask TA once again
      pin.save
    end
    redirect_to moodboard_path(@moodboard) # Shows showpage again

  end

  def new
    # @random_sofas_item = Item.where(category: "Sofas").sample
    @moodboard = Moodboard.new
  end

  def create
    @moodboard = Moodboard.new # Needs a new moodboard instance
    @moodboard.name = Moodboard.generate_name # As a name is needed for mb creation we give it a random name. Method is in Model Moodboard file. User should name it later
    @moodboard.user = current_user # A moodboard neeeds a user id to be created. This connects moodboard to current logged in user.
    if @moodboard.save
      @sofa = Item.where(category: "Sofas").sample # Gets the item with id, name and category which is randomly picked when hitting the start shufflin button on the homepage
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
