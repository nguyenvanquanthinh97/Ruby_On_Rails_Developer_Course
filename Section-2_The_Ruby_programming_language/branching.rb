condition = false
another_condition = false

if condition || another_condition
  puts "this evaluated to true"
else
  puts "this evaluated to false"
end

name = "Jack"
if name == "Mashur"
  puts "Welcome to the program, Mashrur"
elsif name == "Jack"
  puts "Welcome to the program, Jack"
elsif name == "Evgeny"
  puts "Go back and teaching, Evgeny"
else
  puts "Welcome to the program, User"
end

# Asignment1
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

puts "What do you want to do?"
puts "Enter 1 for multiply, 2 for addition, 3 for subtraction"
choice = gets.chomp

puts "Enter the first number"
first_number = gets.chomp.to_i
puts "Enter the second number"
second_number = gets.chomp.to_i

if choice == "1"
  puts "Multiply result: #{multiply(first_number, second_number)}"
elsif choice == "2"
  puts "Add result: #{add(first_number, second_number)}"
elsif choice == "3"
  puts "Subtract result: #{subtract(first_number, second_number)}"
else
  puts "You have inputted an invalid choice"
end


