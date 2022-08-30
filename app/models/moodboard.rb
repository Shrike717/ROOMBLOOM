class Moodboard < ApplicationRecord
  belongs_to :user
  has_many :pins
  has_many :items, through: :pins

end
