class FizzBuzz

  attr_accessor :first_number, :second_number;

  def initialize(first_number=1, second_number=1)
    @first_number = first_number
    @second_number = second_number
    @arr = Array.new(100)
  end

  def run()
    for i in (1..100)
      if (i % @first_number == 0) && (i % @second_number == 0)
        @arr[i-1] = "fizzbuzz"
      elsif (i % @first_number == 0)
        @arr[i-1] = "fizz"
      elsif (i % @second_number == 0)
        @arr[i-1] = "buzz"
      else
        @arr[i-1] = i
      end
    end
    @arr
  end
end
