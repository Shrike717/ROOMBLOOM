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

  def generate_pins
    sofa = Item.where(category: "Sofas").sample # Gets the item with id, name and category which is randomly picked when hitting the start shufflin button on the homepage
    chair = Item.where(category: "Chairs").sample
    rug = Item.where(category: "Rugs").sample
    coffee_table = Item.where(category: "Coffee Tables").sample
    light = Item.where(category: "Lights").sample

    Pin.create(item: sofa, moodboard: self) # Creates a pin with item_id and moodboard_id
    Pin.create(item: chair, moodboard: self)
    Pin.create(item: rug, moodboard: self)
    Pin.create(item: coffee_table, moodboard: self)
    Pin.create(item: light, moodboard: self)
  end

end
