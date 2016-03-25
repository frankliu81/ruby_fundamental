
questions =
["How many sides does a hexagon have?",
 "How many sides does a square have?",
 "How many sides does a triangle have?"]


choices_list = 
 [["1 - five", "2 - six", "3 - seven"], 
  ["1 - three", "2 - four", "3 - five"], 
  ["1 - three", "2 - four", "3 - five"]]

answers =
[2, 2, 1]


score = 0
   
questions.each_with_index do |question, index|
	puts question
	choices = choices_list[index]
	choices.each do |choice|
		puts choice
	end
	print "Enter the correct number:"
	number = gets.to_i
    if number == answers[index]
    	score += 1
    end
end

grade = score / 3.0 * 100

puts "Your grade is #{grade}%, you have #{score} questions out of #{questions.count} correct."
