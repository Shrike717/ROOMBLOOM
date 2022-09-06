class PinsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def update
    @pin = Pin.find(params[:id])
    @pin.pinned = !@pin.pinned # Toggles between truee and false
    # @pin.save
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
