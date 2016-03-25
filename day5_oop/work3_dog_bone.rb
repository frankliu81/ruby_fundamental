# Make two classes dog and bones. The dog class must have an initialize method
# that takes dog's colour and type. The bone must have an initialize method
# that assigns a size for the bone.

# The dog class must have a give method that takes a bone object and adds it
# to an array of bones for the dog. The dog can take a maximum of three bones
#  so if you give it more than three it will will print, I have too many bones.

# The dog class must have an eat bone method so that when you call it it
# removes a bone from the array of bones and prints "yummy!
# I ate 'big' bone" the 'big' part comes from the size attribute of bone.

class Dog

  attr_accessor :colour, :type
  attr_accessor :bone_arr

  def initialize(colour, type)
    @colour = colour
    @type = type
    @bone_arr = []
  end

  def give(bone)
    if @bone_arr.count >= 3
      puts "Dog #{colour} #{type}: I have too many bones."
    else
      @bone_arr.push(bone)
      puts "Dog #{colour} #{type}: I have #{@bone_arr.count} bone(s)."
    end
  end

  def eat()
    if (@bone_arr.count >= 1)
      bone = @bone_arr.shift
      puts "Dog #{colour} #{type}: yummy! I ate #{bone.size} bone."
    end
  end
end

class Bone

  attr_accessor :size

  def initialize(size)
    @size = size
  end

end

# client program

dog = Dog.new("yellow", "laborador")
bone1 = Bone.new("big")
bone2 = Bone.new("medium")
bone3 = Bone.new("small")
bone4 = Bone.new("tiny")

dog.give(bone1)
dog.give(bone2)
dog.give(bone3)
dog.give(bone4)

dog.eat
dog.eat
