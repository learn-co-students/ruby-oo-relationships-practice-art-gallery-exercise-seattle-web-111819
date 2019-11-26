require 'pry'
class Gallery
  attr_reader :gallery_name, :city
  @@all = []
  def initialize(gallery_name, city)
    @gallery_name = gallery_name
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end
  def paintings
    #gets all paintings in that gallery
    Painting.all.select{|painting| painting.gallery == self}
    # binding.pry 
  end
  def artists
    # paintings are what is in your gallery
    paintings.map{|painting|painting.artist}
  end
  def artist_names
    #artists already gives the artists for the paintings in your gallery
    artists.map{|painting|painting.artist_name}
  end
  def most_expensive_painting
    # returns instance of most expensive painting
    #price is in painting class
    Painting.all.max_by{|painting| painting.price}
    # binding.pry
  end

end
