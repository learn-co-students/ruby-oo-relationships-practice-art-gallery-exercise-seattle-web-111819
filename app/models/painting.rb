class Painting

  attr_reader :title, :price
  attr_accessor :gallery, :artist

  @@all = []

  def initialize(title, price, artist)
    @title = title
    @price = price
    @artist = artist

    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
   Painting.all.map {|painting| painting.price}.sum
  end

end
