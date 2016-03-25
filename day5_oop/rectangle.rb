class Rectangle

  attr_accessor :width, :height

  def initialize(width = 0, height = 0)
    @width = width
    @height = height
  end

  def area()
    #@width * @height
    # public methods are accessible, so we can
    # call it this way
    # we prefer to access with method, in case width
    # changes from accessor
    width * height
  end

end
