require "./helper_methods.rb"

# we used the 'class' keyword to create a class in Ruby
# Ruby class names must start with a capital letter (ie. Constants)
# Convention to name the class is CamelClass
# Typical first_name.rb, containing one class FirstName
class Cookie
  
  attr_accessor :name
  include HelperMethods
  MAX_SUGAR = 10

  def initialize(sugar_amount=0, flour_amount=0)
    puts "I'm in the cookie intialize method"
    @sugar = sugar_amount
    @flour = flour_amount
  end

  attr_reader :sugar
  # is equivalent to:
  # def sugar
  #  @sugar
  # end

  # :sugar defining a method name, using immutable symbol
  attr_writer :sugar
  # isquivalent to
  # def sugar=(amount)
  #   @sugar = amount
  # end

  attr_accessor :flour
  # is equivalent to:
  # attr_reader :flour
  # attr_writer :flour

  # this defines a clas method called 'info', self refers to cookie
  def self.info
    "I'm the Cookie class!"
  end

  # This defines an instance (or object) method
  # it means that you will need to create and object first to call this method
  def eat(name = "")
      @number = rand(100)
      "#{name}: Nom..Nom!"
  end

  def bake_and_eat
      # redundant to do self.bake
      # we can use self to reference the object that you're calling this method
      # on.  If you're calling another instance method, then using self is
      # redundant.
      puts @number
      puts bake
      puts eat
  end

  def details
      "This cookie has #{@sugar}g of sugar and #{@flour}g of flour"
  end

  # everything after private keyword is private
  private
  def bake
      "Eating the cookie!"
  end

end
