require "time"

module HelperMethods_assign2
  # @@a is a module ariable
  @@a = 3
  @@b = 5
  @@m = 1
  @@last_number = Time.now.to_i % 100

  # roll my own random generator
  # https://www.quora.com/What-is-a-simple-formula-to-generate-a-random-number
  def random_number(max)
    @@m = max
    @@number = (@@a * @@last_number + @@b) % max
    @@last_number = @@number
    #puts @@number
    @@number
  end

  # def random_number(max)
  #   number = rand(max)
  #   puts number
  #   number
  # end

end
