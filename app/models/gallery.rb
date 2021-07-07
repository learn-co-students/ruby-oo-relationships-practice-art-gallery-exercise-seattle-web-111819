#Practice 3:
class Gallery
  attr_reader :name, :location
  @@all = []

  def initialize(name, location)
    @name = name
    @location =location

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings #g1.paintings
    Painting.all.select {|painting|painting.gallery == self}
  end

  def artists #g1.artists
    paintings.map {|painting|painting.artist}
  end

  def artist_names #g1.artist_names
    artists.map {|artist|artist.name}.uniq
  end

  def most_expensive_painting #g1.most_expensive_painting
    paintings.max_by {|painting|painting.price}
  end

end



#Practice 2:

# class Gallery
#   attr_reader :name, :city
#   @@all = []
  
#   def initialize(name, city)
#     @name = name
#     @city = city
#     @@all << self
#   end
  
#   def self.all 
#     @@all
#   end
  
#   #Returns an `array` of all the galleries
#       #Gallery.all

#   #Returns an `array` of all paintings in a gallery

#   def paintings #g1.paintings
#     Painting.all.select {|painting|painting.gallery == self}
#   end
#   #Returns an `array` of all artists that have a painting in a gallery

#   def artists #g1.artists
#     paintings.map { |painting| painting.artist}.uniq
#   end

#   #Returns an `array` of the names of all artists that have a painting in a gallery

#   def artist_names #g1.artist_names
#     artists.map {|painting| painting.name}
#   end

#   #Returns an `instance` of the most expensive painting in a gallery

#   def most_expensive_painting #g1.most_expensive_painting
#     paintings.max_by {|painting| painting.price}
#   end

#   end






#Practice 1:




# class Gallery

#   attr_reader :name, :city

#   @@all = []

#   def initialize(name, city)
#     @name = name
#     @city = city

#     @@all << self
#   end

#   def self.all
#     @@all
#   end

#   def paintings
#     #Returns an `array` of all paintings in a gallery 
#     Painting.all.select {|painting| painting.gallery == self }
#   end

#   def artists
#     #Returns an `array` of all artists that have a painting in a gallery
#     paintings.map {|painting| painting.artist }.uniq
#   end

#   def artist_names
#     #Returns an `array` of the names of all artists that have a painting in a gallery
#     paintings.map { |painting| painting.artist.name}
#   end

#   def most_expensive_painting
#     #Returns an `instance` of the most expensive painting in a gallery 
#     paintings.max_by { |painting| painting.price}
#   end

# end
