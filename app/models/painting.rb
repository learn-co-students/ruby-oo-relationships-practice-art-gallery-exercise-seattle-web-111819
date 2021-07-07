class Painting

  attr_reader :title, :price
  attr_accessor :artist, :gallery

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
    @@all.reduce(0) {|memo, painting| memo + painting.price}
  end

end
