class Moodboard < ApplicationRecord
  belongs_to :user
  has_many :pins, dependent: :destroy
  has_many :items, through: :pins


  def self.generate_name
    names = ["Aplha", "Beta", "Gamma", "Delta"]
    moodboard_name = ""
    3. times do
      moodboard_name += names.sample
    end
    moodboard_name
  end


end
