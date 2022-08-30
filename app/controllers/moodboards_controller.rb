class MoodboardsController < ApplicationController
  def index
    @moodboards = Moodboard.all
    @random_sofas_item = Item.where(category: "Sofas").sample
    @random_chairs_item = Item.where(category: "Chairs").sample
    @random_rugs_item = Item.where(category: "Rugs").sample
  end
  
  def show
  end

  def new
    @random_sofas_item = Item.where(category: "Sofas").sample
  end
end
