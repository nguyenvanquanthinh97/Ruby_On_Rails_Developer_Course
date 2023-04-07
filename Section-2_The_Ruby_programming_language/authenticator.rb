users = [
  {username: "mashrur", password: "password1"},
  {username: "jack", password: "password2"},
  {username: "arya", password: "password3"},
  {username: "jonshow", password: "password4"},
  {username: "heisenberg", password: "password5"},
]

def auth_user(input_username, input_password, list_users_record)
  list_users_record.each do |user_record| 
    if user_record[:username] == input_username && user_record[:password] == input_password
      return user_record
    end
  end

  return nil
end

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

  found_user = auth_user(input_username, input_password, users)

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
  
