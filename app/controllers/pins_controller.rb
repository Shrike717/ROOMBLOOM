class PinsController < ApplicationController

  def update
    @pin = Pin.find(params[:id])
    @pin.pinned = !@pin.pinned # Toggles between truee and false
    if @pin.save
      respond_to do |format|
        format.html{
          redirect_to moodboard_path(@pin.moodboard), status: :see_other # To make a new get request to the showpage
        }
        format.json
      end
    else
      render "moodboards/show", status: :unprocessable_entity
    end
  end

  private

  def pin_params
    params.require(:pin).permit(:item_id, :pinned)
  end

end
