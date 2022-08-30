class Item < ApplicationRecord
  has_many :pins
  has_many :mmoodboards, through: :pins

  has_one_attached :photo
end
