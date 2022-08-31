class PinsController < ApplicationController

  def update
    @pin = Pin.find(params[:id])
    @pin.pinned = !@pin.pinned
    # @moodboard = Moodboard.find(params[:moodboard_id])
    # @pin.moodboard = @moodboard
    if @pin.save
      redirect_to moodboards_path
    else
      render "moodboards/show", status: :unprocessable_entity
    end
  end

  private

  def pin_params
    params.require(:pin).permit(:item_id, :pinned)
  end

end
