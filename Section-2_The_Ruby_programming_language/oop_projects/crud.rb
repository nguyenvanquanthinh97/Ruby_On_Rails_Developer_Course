module Crud
  require 'bcrypt'

  def self.create_hash_digest(password)
    BCrypt::Password.create(password)
  end

  def self.verify_has_digest(hashed_password)
    BCrypt::Password.new(hashed_password)
  end

  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def self.auth_user(input_username, input_password, list_users_record)
    list_users_record.each do |user_record| 
      if user_record[:username] == input_username && verify_has_digest(user_record[:password]) == input_password
        return user_record
      end
    end

    return nil
  end
end
