# String concatenation
first_name = "Thinh"
last_name = "Nguyen"

puts first_name + " " + last_name

# String interpolation
puts 'My first name is #{first_name} and my last name is #{last_name}'

puts "My firstname is #{first_name} and my last name is #{last_name}"

# Methods, how to find them
full_name = first_name + " " + last_name

puts full_name.class
puts 10.class
puts 10.0.class

## Print all string methods to the screen
full_name.methods

puts full_name.length
puts full_name.reverse
puts full_name.capitalize

puts full_name.empty?
puts "".empty?
puts "".nil?
puts nil.nil?

sentence = "Welcome to the jungle"
puts sentence.sub("the jungle", "utopia")

## pass by reference
first_name = "Thinh"
new_first_name = first_name
first_name = "Leo"
puts "first_name is #{first_name}, and new_first_name is #{new_first_name}"

# Escape
puts "No-escape: first_name is #{first_name}, and new_first_name is #{new_first_name}"
puts "Escape: first_name is \#{first_name}, and new_first_name is \#{new_first_name}" 
