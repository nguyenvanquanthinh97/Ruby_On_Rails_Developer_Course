class User < ApplicationRecord
  before_save {self.username = username.downcase}
  before_save {self.email = email.downcase}
  has_many :articles
  validates :username, presence: true,
                      uniqueness: { case_sensitive: false },
                      length: {minimum: 3, maximum: 25}
  EMAIL_VALIDATION_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: {with: EMAIL_VALIDATION_REGEX},
                    length: {maximum: 105} 
end