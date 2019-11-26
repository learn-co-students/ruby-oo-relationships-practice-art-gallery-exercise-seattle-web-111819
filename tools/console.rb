require_relative '../config/environment.rb'

a1 = Artist.new("Natali", 3)
a2 = Artist.new("Tanner", 4)
a3 = Artist.new("Jacob", 3)

g1 = Gallery.new("SAM", "Seattle")
g2 = Gallery.new("Mad", "Madrid")
g3 = Gallery.new("Louvre", "Paris")

p1 = Painting.new("Starry Night", 1000000)
p2 = Painting.new("Mona Lisa", 3000000)
p3 = Painting.new("Birth of Venus", 2000000)
p4 = Painting.new("Astronomer", 100000)
p5 = Painting.new("Ninth Wave", 1500000)
p6 = Painting.new("Sunrise", 1000000)

p p1.gallery = g1
p p1.artist = a1

binding.pry

0