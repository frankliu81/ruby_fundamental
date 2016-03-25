# write a method that takes the hash and prints if city is large (more than 100,000)
# small (otherwise), printing something like vancouver is a large city

bc_cities_populations = {vancouver: 2_135_201, victoria: 316_327, abbotsford: 99_855}

def print_city_size_info(populations)
  populations.each do |city, population|
    #puts city
    #puts population
      if population > 100_000
          puts "#{city} is a large city"
      else
          puts "#{city} is a small city"
      end
  end
end

print_city_size_info(bc_cities_populations)
