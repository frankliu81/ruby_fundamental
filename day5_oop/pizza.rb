class CoderDelight

  # this is possible, but we try to keep everything in def initialize
  # @protein = protein
  # @sugar = sugar
  # @fat = fat
  attr_accessor :protein
  attr_accessor :sugar
  attr_accessor :fat


  def initialize(protein=0,sugar=0,fat=0)
    @protein = protein
    @sugar = sugar
    @fat = fat
  end

  # this will help expose the need for calling super() in Beer
  # without the default argument
  # you will get rgumentError: wrong number of arguments (1 for 0)
  # when calling b = Beer.new(30)
  # def initialize
  #   @protein = 0
  #   @sugar = 0
  #   @fat = 0
  # end

end

class Pizza < CoderDelight

  attr_accessor :weight

  def initialize(weight)
    super()
    @weight = weight
  end
end

class Beer < CoderDelight

  attr_accessor :volume

  def initialize(volume)
    super()
    @volume = volume
  end

  def i_want_sugar
    sugar
  end

end
