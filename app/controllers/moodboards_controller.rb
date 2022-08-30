class MoodboardsController < ApplicationController
  def index
    @moodboards = Moodboard.all
  end
  def show
  end
end
