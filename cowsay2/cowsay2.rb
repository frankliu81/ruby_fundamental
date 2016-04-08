# Forking cowsay.rb https://github.com/johnnyt/cowsay/blob/master/lib/cowsay.rb
# list of all cowsay characters: https://github.com/johnnyt/cowsay/tree/master/lib/cowsay/character

require 'cowsay/version'
require 'cowsay/character'

module ::Cowsay
  module_function # all instance methods are available on the module (class) level

  def fix_character(name)
    fix_class = Character.const_get(name);
    fix_class.new
  end

  def random_character
    puts character_classes[rand(character_classes.length)]
    random_class = Character.const_get(character_classes[rand(character_classes.length)])
    random_class.new
  end

  def character_classes
    @character_classes ||= Character.constants.map { |c| c.to_sym } - [:Base, :Template]
  end

  def say(message)
    random_character.say(message)
  end

  def say2(message, name="Moose")
    fix_character(name).say(message)
  end

end


puts Cowsay.say2("I am a cheesy", "Cheese")
puts Cowsay.say2("I am a freaking dragon", "Dragon")
