class Item < ApplicationRecord
  has_many :pins
  has_many :moodboards, through: :pins

  has_one_attached :photo
end
