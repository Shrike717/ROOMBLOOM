class Item < ApplicationRecord
  has_many :pins, dependent: :destroy
  has_many :moodboards, through: :pins

  has_one_attached :photo

  def moodboard_pin(moodboard)
    self.pins.find_by(moodboard: moodboard)
  end

  def pretty_name
    self.name.tr("0-9", "").strip
  end
end
