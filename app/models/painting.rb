require 'pry'
class Painting
  attr_reader :title, :price
  attr_accessor :gallery, :artist
  @@all = []
  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
  end
  def self.all
    @@all
  end
  def self.total_price
    price_total = @@all.map {|painting| painting.price}
    price_total.reduce(:+)
    # binding.pry
  end
  

end
