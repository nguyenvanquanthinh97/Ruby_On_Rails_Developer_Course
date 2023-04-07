require_relative "crud"

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, Email address: #{@email}"
  end

end

mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com", "password1")
john = Student.new("John", "Doe", "john1", "john1@example.com", "password1")

# puts mashrur
# puts john
# mashrur.last_name = john.last_name
# puts "Mashur has updated his last_name"
# puts mashrur
# mashrur.first_name = "Mashrur"
# puts mashrur

# Remove "self." in crud.rb to be able to use mixin
# hashed_password = mashrur.create_hash_digest(mashrur.password)
# puts hashed_password
