require_relative '../config/environment.rb'

a1 = Artist.new("Claude Monet", 3)
a2 = Artist.new("Frances Bacon", 2)
a3 = Artist.new("Frida Kahlo", 1)

g1 = Gallery.new("P1 Gallery", "New York")
g2 = Gallery.new("Craighead Green", "Dallas")
g3 = Gallery.new("Minna", "San Francisco")

p1 = Painting.new("Flowers", 1500, a1)
p2 = Painting.new("Puppies", 2000, a2)
p3 = Painting.new("Precious Stones", 50000000, a3)
p4 = Painting.new("Bones", 100, a1)
p5 = Painting.new("Loans", 500, a2)
p6 = Painting.new("Drones", 900, a3)

p1.gallery = g1
p2.gallery = g2
p3.gallery = g3
p4.gallery = g1
p5.gallery = g2
p6.gallery = g3

binding.pry
0
# puts "Bob Ross rules."
# 0