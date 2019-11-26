require 'pry'
class Artist
  attr_reader :artist_name, :experience
  @@all = []
  def initialize(artist_name, experience)
      @artist_name = artist_name
      @experience = experience
    @@all << self
  end
  def self.all
    @@all
  end
  def paintings
    Painting.all.select {|painting| painting.artist = self}
    # binding.pry
  end
  def galleries
    #gets the galleries that this artist paintings are showcased
    #helper method! paintings already have this artist paintings selected!
    self.paintings.map{|painting| painting.gallery}.compact
    # binding.pry
  end
  def cities
    #gets the cities of where the artist has paintings. cities are in galleries
    #use helper method
    self.galleries.map{|gallery| gallery.city}
    # binding.pry
  end
  def self.total_experience
    #get all of years of experience of each artist
    #return the total of all those years
    #put each yoe in an array and add them up
    yoe = @@all.map{|artist| artist.experience}
    yoe.reduce(:+)
    # binding.pry
  end
  def self.artist_most_prolific
    # Returns an instance of the artist with the highest amount of paintings per years of experience.
    #call on @@all

    # yoe = @@all.max_by{|artist|artist.experience}
    # amount_of_paintings = @@all.max_by{|artist| artist.paintings.count.to_f}
    # @@all[0].paintings.count / @@all[0].experience
    @@all.max_by{|artist| artist.paintings.count.to_f / artist.experience}
    # binding.pry
  end

  def create_painting(title, price, gallery_name)
    # Given the arguments of title, price and gallery, creates a new painting belonging to that artist
    new_painting = Painting.new(title, price)
    new_painting.artist = self
    new_painting.gallery = gallery_name
    # binding.pry
  end

end
