class Pin < ApplicationRecord
  belongs_to :item
  belongs_to :moodboard
end
