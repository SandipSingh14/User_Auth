class User < ActiveRecord::Base
<<<<<<< HEAD
# This line changed due to error
  attr_accessor :username, :email, :password, :password_confirmation
# ^ n $ is remore due to error
  EMAIL_REGEX = /[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i
=======
  attr_accessor :password
  EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  validates :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create
<<<<<<< HEAD
  before_save :encrypt_password
  after_save :clear_password
  def encrypt_password
=======
before_save :encrypt_password
after_save :clear_password
def encrypt_password
>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
  if password.present?
    self.salt = BCrypt::Engine.generate_salt
    self.encrypted_password= BCrypt::Engine.hash_secret(password, salt)
  end
<<<<<<< HEAD
  end
  def clear_password
  self.password = nil
  end
  def self.authenticate(username_or_email="", login_password="")
    if  EMAIL_REGEX.match(username_or_email)    
=======
end
def clear_password
  self.password = nil
end
def self.authenticate(username_or_email="", login_password="")
  if  EMAIL_REGEX.match(username_or_email)    
>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
    user = User.find_by_email(username_or_email)
  else
    user = User.find_by_username(username_or_email)
  end
<<<<<<< HEAD
    if user && user.match_password(login_password)
=======
  if user && user.match_password(login_password)
>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
    return user
  else
    return false
  end
<<<<<<< HEAD
  end   
  def match_password(login_password="")
    encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
end
=======
end   
def match_password(login_password="")
  encrypted_password == BCrypt::Engine.hash_secret(login_password, salt)
end

>>>>>>> 74c1274bb4dcdbda7c2d5a41d973a3cdcba5676e
end
