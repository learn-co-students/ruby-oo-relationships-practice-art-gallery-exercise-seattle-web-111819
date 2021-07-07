require_relative '../config/environment.rb'

a1 = Artist.new("Frida Kahlo", 10)
a2 = Artist.new("Frances Bacon", 20)
a3 = Artist.new("Monet", 30)
a4 = Artist.new("Marina Abromovic", 27)
a5 = Artist.new("Cindy Sherman", 5)

g1 = Gallery.new("First Gallery", "Dallas")
g2 = Gallery.new("Second Gallery", "NYC")
g3 = Gallery.new("Third Gallery", "Seattle")
g4 = Gallery.new("Fourth Gallery", "LA")
g5 = Gallery.new("Fifth Gallery", "Oklahoma")

p1 = Painting.new("Painting One", 500)
p2 = Painting.new("Painting Two", 600)
p3 = Painting.new("Painting Three", 700)
p4 = Painting.new("Painting Four", 800)
p5 = Painting.new("Painting Five", 900)
p6 = Painting.new("Painting Six", 1000)
p7 = Painting.new("Painting Seven", 900)
p8 = Painting.new("Painting Eight", 800)
p9 = Painting.new("Painting Nine", 700)
p10 = Painting.new("Painting Ten", 400)

p1.artist = a1
p2.artist = a2
p3.artist = a3
p4.artist = a1
p5.artist = a2
p6.artist = a3
p7.artist = a5
p8.artist = a4
p9.artist = a5
p10.artist = a4

p1.gallery = g1
p2.gallery = g2
p3.gallery = g3
p4.gallery = g3
p5.gallery = g2
p6.gallery = g3
p7.gallery = g5
p8.gallery = g4
p9.gallery = g5
p10.gallery = g4

binding.pry
0































# a1 = Artist.new("Claude Monet", 3)
# a2 = Artist.new("Frances Bacon", 2)
# a3 = Artist.new("Frida Kahlo", 1)

# g1 = Gallery.new("P1 Gallery", "New York")
# g2 = Gallery.new("Craighead Green", "Dallas")
# g3 = Gallery.new("Minna", "San Francisco")

# p1 = Painting.new("Flowers", 1500, a1)
# p2 = Painting.new("Puppies", 2000, a2)
# p3 = Painting.new("Precious Stones", 50000000, a3)
# p4 = Painting.new("Bones", 100, a1)
# p5 = Painting.new("Loans", 500, a2)
# p6 = Painting.new("Drones", 900, a3)

# p1.gallery = g1
# p2.gallery = g2
# p3.gallery = g3
# p4.gallery = g1
# p5.gallery = g2
# p6.gallery = g3


# puts "Bob Ross rules."
# 0