class Seed

  def self.start
    seed = Seed.new
    seed.destroy
    seed.generate_parks
  end

  def destroy
    Park.destroy_all
  end

  def generate_parks
    Park.create!(rec_area_number: 2573, name: "Arches National Park", description: "Visit Arches and discover a landscape of contrasting colors, landforms and textures unlike any other in the world. The park has over 2,000 natural stone arches, in addition to hundreds of soaring pinnacles, massive fins and giant balanced rocks. This red rock wonderland will amaze you with its formations, refresh you with its trails, and inspire you with its sunsets.", image_url: "https://ridb.recreation.gov/images/62392.jpg")
    Park.create!(rec_area_number: 2616, name: "Canyonlands National Park", description: "Canyonlands invites you to explore a wilderness of countless canyons and fantastically formed buttes carved by the Colorado River and its tributaries. Rivers divide the park into four districts: Island in the Sky, The Needles, The Maze, and the rivers themselves. These areas share a primitive desert atmosphere, but each offers different opportunities for sightseeing and adventure.", image_url: "https://ridb.recreation.gov/images/62459.jpg")
    Park.create!(rec_area_number: 2617, name: "Capitol Reef National Park", description: "Located in south-central Utah in the heart of red rock country, Capitol Reef National Park is a hidden treasure filled with cliffs, canyons, domes and bridges in the Waterpocket Fold, a geologic monocline (a wrinkle on the earth) extending almost 100 miles.", image_url: "https://ridb.recreation.gov/images/77158.jpg")
    Park.create!(rec_area_number: 2599, name: "Bryce Canyon National Park", description: "There is no place like Bryce Canyon. Hoodoos (odd-shaped pillars of rock left standing from the forces of erosion) can be found on every continent, but here is the largest collection of hoodoos in the world! Descriptions fail. Photographs do not do it justice. An imagination of wonder will serve you when visiting Bryce Canyon National Park.", image_url: "https://www.recreation.gov/webphotos/NRSO/pid74088/0/540x360.jpg")
    Park.create!(rec_area_number: 2994, name: "Zion National Park", description: "Follow the paths where ancient native people and pioneers walked. Gaze up at massive sandstone cliffs of cream, pink, and red that soar into a brilliant blue sky. Experience wilderness in a narrow slot canyon. Zion's unique array of plants and animals will enchant you as you absorb the rich history of the past and enjoy the excitement of present day adventures.", image_url: "https://ridb.recreation.gov/images/63035.jpg")
    Park.create!(rec_area_number: 2782, name: "Joshua Tree National Park", description: "Two distinct desert ecosystems, the Mojave and the Colorado, come together in Joshua Tree National Park. A fascinating variety of plants and animals make their homes in a land sculpted by strong winds and occasional torrents of rain. Dark night skies, a rich cultural history, and surreal geologic features add to the wonder of this vast wilderness in southern California. Come explore for yourself.", image_url: "https://www.recreation.gov/webphotos/NRSO/pid70953/0/540x360.jpg")
    puts "Parks created!"
  end
end

Seed.start
