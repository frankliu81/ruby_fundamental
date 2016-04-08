require "./work2_helper.rb"

class Animal
  attr_accessor :name, :alive

  def initialize(name = "no name")
    self.name = name
    alive = true
  end
end

class Cat < Animal

  include HelperMethods_work2

  def catch(bird)
    if random_number(100) > 50
      bird.alive = false
    end
  end
  "catch"
end


class Bird < Animal
  def fly
    "fly"
  end
end

############################################
###########    MAIN PROGRAM   ##############
############################################

print "Enter the Cat Family: "
cat_family_name = gets.chomp
print "Enter the Bird Family: "
bird_family_name = gets.chomp
print "Enter the Number of Tries: "
tries = gets.chomp.to_i

# include random_number
include HelperMethods_assign2

cats = []
birds = []

# create 100 cats and birds
for i in 1..100 do
  cats << Cat.new(cat_family_name + i.to_s)
  birds << Bird.new(bird_family_name + i.to_s)
end


# simulate 10 different random attempts of cats family
# catching the birds family
for j in 1..tries
  cat = cats[random_number(100)]
  bird = birds[random_number(100)]
  cat.catch(bird)
  # printf wdith.prceision characters
  # http://www.cplusplus.com/reference/cstdio/printf/
  print '%10.10s' % "Try #{j}: "
  # if the bird is killed, print it out
  if bird.alive == false
    print  "\t x \t #{cat.name} killed #{bird.name}"
  else
    print  "\t   \t #{bird.name} escaped #{cat.name}"
  end
  puts
end
