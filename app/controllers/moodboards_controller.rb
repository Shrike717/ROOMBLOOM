class MoodboardsController < ApplicationController
  def index
    @moodboards = Moodboard.all
  end
end
