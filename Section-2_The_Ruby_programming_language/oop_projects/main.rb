require_relative 'crud'

# import method above is same with below
# $LOAD_PATH << "."
# require 'crud'

users = [
  {username: "mashrur", password: "$2a$12$E5PtED/n7nsTp25FmHVgM.3k7MDejOocw3W5xHY5k/nguN9QHdGQC"}, #{password: 'password1'}
  {username: "jack", password: "$2a$12$M8wC8BtybwRIsUOxymBRW.l4VUD.FpHkP1cCkbpM6B/Y0Bz9uUd02"}, #{password: 'password2'}
  {username: "arya", password: "$2a$12$fhwA9.wdpH5VPbhzImFZYObYKuB1kHY47E1ErrKRBd2ahYNTKXyga"}, #{password: 'password3'}
  {username: "jonshow", password: "$2a$12$LAjTnQ8MaSlhE.T0Y23pcOgKsHCofmVH76aB8MaB68BXDu/JqUvR2"}, #{password: 'password4'}
  {username: "heisenberg", password: "$2a$12$34zuCzxlEAX56DQiZl4qvezeajbmnvxup5cBD7VlBoSBd4fN.H9qu"}, #{password: 'password5'}
]


puts "Welcome to the autheticator"
25.times {print('-')}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

max_attempt = 3

loggin_attemps = 0
while loggin_attemps < max_attempt do
  loggin_attemps += 1
  print "Username:"
  input_username = gets.chomp
  print "Password:"
  input_password = gets.chomp

  found_user = Crud.auth_user(input_username, input_password, users)

  if !found_user.nil?
    puts found_user
    break
  end
  
  puts "Press n to quit or any other key to continue:"
  choice = gets.chomp

  break if choice == "n"

  next
end

puts "You have exceeded the number of attempts" if loggin_attemps >= 3