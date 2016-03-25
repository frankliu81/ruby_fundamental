require "./helper_methods.rb"
require "./greetings.rb"

class Car


  attr_accessor :name

  # The methods defined inside HelperMethods will be instance methods
  # for the Car class because we used 'include'
  include HelperMethods
  # The methods defined insdie Greetings will be class methods for the Car
  extend Greetings

  def intialize(model="", type="", capacity="")

    # @model, @type, @capacity = model, type, capacity
    # model is reserved keyword in ruby on rails
    @model = model
    @type = type
    @capacity = capacity
  end

  def self.max_speed
    200
  end

  def drive
    ignite_engine
    puts "drive"
  end

  def stop
    puts "stop"
  end

  def park
    puts "park"
  end

  private

  def pump_gas
    puts "pump_gas"
  end

  def ignite_engine
    puts "ignite_engine"
  end

end
