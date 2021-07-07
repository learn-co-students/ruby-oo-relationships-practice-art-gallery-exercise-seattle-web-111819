#Practice 3:
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

  def self.total_price #Painting.total_price
    #Returns an `integer` that is the total price of all paintings
    Painting.all.sum {|painting|painting.price}
  end

end



#Practice 2:

# class Painting
# attr_reader :price, :title
# attr_accessor :gallery, :artist
# @@all = []

# def initialize(title, price)
#   @price = price
#   @title = title
#   @@all << self
# end

# def self.all 
#   @@all
# end

# # Returns an `array` of all the paintings



# #Returns an `integer` that is the total price of all paintings
# def self.total_price
#  total =  @@all.map {|painting|painting.price}.sum
# end

# end







#Practice 1


# class Painting

#   attr_reader :title, :price
#   attr_accessor :gallery, :artist

#   @@all = []

#   def initialize(title, price, artist)
#     @title = title
#     @price = price
#     @artist = artist

#     @@all << self
#   end

#   def self.all
#     @@all
#   end

#   def self.total_price
#    Painting.all.map {|painting| painting.price}.sum
#   end

# end
