puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

puts "Enter a number to multiply by 2"
input = gets.chomp
result = input.to_i * 2
puts "Result: #{result}"

# Assignment 1
puts "Enter your first name"
first_name = gets.chomp

puts "Enter your last name"
last_name = gets.chomp

full_name = "#{first_name} #{last_name}"
puts "Your full name is #{full_name}"
puts "Your full name reversed is #{full_name.reverse}"
puts "Your name has #{first_name.length + last_name.length} characters in it"
