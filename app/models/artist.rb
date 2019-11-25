class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    #Returns an `array` of all the artists
    @@all
  end

  def paintings #a1.paintings
    #Returns an `array` all the paintings by an artist 
    Painting.all.select {|painting|painting.artist == self}
  end
  

  def galleries #a1.galleries
    #Returns an `array` of all the galleries that an artist has paintings in
    paintings.map { |painting| painting.gallery }.uniq
  end


  def cities
    #Return an `array` of all cities that an artist has paintings in
    galleries.map {|gallery| gallery.city}.uniq
  end

  def self.total_experience
    #Returns an `integer` that is the total years of experience of all artists
    self.all.map {|artist| artist.years_experience}.sum 
  end

  def self.most_prolific
    #Returns an `instance` of the artist with the highest amount of paintings per year of experience.
    
    #get total paintings by artist
 
    xp = @@all.max_by{ |artist| artist.paintings.count / artist.years_experience }

    #get years of experience for artist

    #divide years by paintings

    #compare 
  end

  def create_painting(title, price, gallery)
    #Given the arguments of `title`, `price` and `gallery`, creates a new painting belonging to that artist
    new_painting = Painting.new(title, price, self)
    new_painting.gallery = gallery
    new_painting
  end


end
