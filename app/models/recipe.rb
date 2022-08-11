class Recipe < ApplicationRecord
  validates :stuff, :name, :preptime, :directions, presence:true
  validates_length_of :stuff, maximum:500
  validates_length_of :directions, maximum:1000
  validates_numericality_of :calories, greater_than_or_equal_to:0, presence:true
  validates_format_of :poster, with: /\w+\.(gif|jpg|png)\z/i, message:"GIF, JPEG or PNG files only."

  KIND = %w(Breakfast Lunch Dinner Dessert Appetizers Drink Holidays Vegan)
  validates_inclusion_of :kind, in: KIND

  def light?
    calories.blank? || calories < 100
  end

  def self.created_at
    where('created_at <= ?', Time.now).order('created_at desc')
  end
end
