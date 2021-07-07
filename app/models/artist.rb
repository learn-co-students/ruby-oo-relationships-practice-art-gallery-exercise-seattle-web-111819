class Artist
  @@all = []

  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}.uniq.compact
  end

  def cities
    self.galleries.map {|gallery| gallery.city}.uniq
  end

  def self.total_exerience
    @@all.reduce(0) {|memo, artist| memo + artist.years_experience}
  end

  def self.most_prolific
    @@all.max_by {|artist| artist.paintings.count.to_f / artist.years_experience}
  end

  def create_painting(title, price, gallery)
     new_painting = Painting.new(title, price)
     new_painting.artist = self
     new_painting.gallery = gallery
  end

end
