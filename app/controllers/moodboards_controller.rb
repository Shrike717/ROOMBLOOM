class MoodboardsController < ApplicationController
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
    @random_sofas_item = Item.where(category: "Sofas").sample
  end

  def create
    
  end
end
