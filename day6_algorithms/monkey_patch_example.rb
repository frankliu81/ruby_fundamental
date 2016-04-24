class HelloClass
  def hello
    puts "hello"
  end
end

a = HelloClass.new
a.hello

class HelloClass
  def hello
    puts "patched"
  end
end

b = HelloClass.new
b.hello
