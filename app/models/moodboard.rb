class Moodboard < ApplicationRecord
  belongs_to :user, optional: true # When creating moodboard without a user. It saves it
  has_many :pins
  has_many :items, through: :pins

end
