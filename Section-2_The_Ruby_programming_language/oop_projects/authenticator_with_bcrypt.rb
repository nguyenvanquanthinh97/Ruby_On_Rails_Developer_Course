require 'bcrypt'

my_password = BCrypt::Password.create('my password')

puts my_password
puts my_password.version
puts my_password.cost
puts my_password == "my password" #=> true
puts my_password == "not my password" #=>false

25.times {print("-")}
puts
# Retrieve the hash from database and initial an instance to compare
my_password = BCrypt::Password.new("$2a$12$/yaj1d2eGkJr6cUu3Z1FmuC5UTik9J/nlRgIzXg4ZpDxuwyiw6oh6")
puts(my_password)
puts my_password == "my password" #=>true
puts my_password == "not my password" #=>false
