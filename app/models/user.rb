class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: {maximum: 30}
 # validates(:email, {presence: true})
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 50},
            format: { with: VALID_EMAIL_REGEX},
            uniqueness: true
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
            #uniqueness: {case_sensitive: false}
         
  validates_presence_of :password_confirmation
end
