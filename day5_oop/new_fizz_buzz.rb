class FizzBuzz
  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end
  def first_number=(number)
    @num1 = number
  end
  def first_number=(number)
    @num2 = number
  end
  def run
    my_array =[]
    for i in 1..100
      if i % @num1 == 0 && i % @num2 == 0
        my_array << "fizzbuzz"
      elsif i % @num1 == 0
        my_array << "fizz"
      elsif i % @num2 == 0
        my_array << "buzz"
      else
        my_array << i
      end
    end
    return my_array
  end
end
