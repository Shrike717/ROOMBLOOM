class PinsController < ApplicationController

  # has  to be changed to update

  def create
    @pin = Pin.new(pin_params)
    @moodboard = Moodboard.find(params[:moodboard_id])
    @pin.moodboard = @moodboard

    if @pin.save
      redirect moodboard_path(@moodboard)
    else
      render "moodboards/show", status: :unprocessable_entity
    end
  end




  private

  def pin_params
    params.require(:pin).permit(:item_id)
  end

end
