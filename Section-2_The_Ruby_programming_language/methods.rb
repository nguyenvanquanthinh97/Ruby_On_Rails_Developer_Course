def multiply(first_number, second_number) 
  return first_number * second_number
end

def divide(first_number, second_number)
  return first_number / second_number
end

def modulus(first_number, second_number)
  return first_number % second_number
end

def add(first_number, second_number)
  return first_number + second_number
end

def substract(first_number, second_number)
  return first_number - second_number
end

puts "Simple calculation"
25.times {print "-"}
puts

puts "Enter the first number"
first_number = gets.chomp.to_i
puts "Enter the second number"
second_number = gets.chomp.to_i

puts "The first number multiplied by the second number is #{multiply(first_number, second_number)}"
puts "The first number divided by the second number is #{divide(first_number, second_number)}"
puts "The first number modulus by the second number is #{modulus(first_number, second_number)}"
puts "The first number added by the second number is #{add(first_number, second_number)}"
puts "The first number subtracted by the second number is #{substract(first_number, second_number)}"