puts "Simple calculation"
25.times {print "-"}
puts

puts "Enter the first number"
first_number = gets.chomp.to_i
puts "Enter the second number"
second_number = gets.chomp.to_i

puts "The first number multiplied by the second number is #{first_number * second_number}"
puts "The first number divided by the second number is #{first_number / second_number}"
puts "The first number modulus by the second number is #{first_number % second_number}"
puts "The first number added by the second number is #{first_number + second_number}"
puts "The first number subtracted by the second number is #{first_number - second_number}"

puts "Convert from int to float: #{first_number.class} to #{first_number.to_f.class}"

puts "The first number is odd: #{first_number.odd?}"
puts "The second number is odd: #{second_number.odd?}"

puts "The first number is even: #{first_number.even?}"
puts "The second number is even: #{second_number.even?}"

puts "Convert from integer to string: #{first_number.class} to #{first_number.to_s.class}"

puts "Generate a random number between 0 and less than 10 #{rand(10)}"

20.times {print "#{rand(10)}  "}