class TestClass
  attr_accessor :name, :age

  def initialize()
    @name = "Frank"
    @age = 34
  end

  def set_all(name, age)
    # this stays as local variable
    # name = name
    # age = age
    self.name = name
    self.age = age
  end

end
