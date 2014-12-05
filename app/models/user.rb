class User < ActiveRecord::Base
  include BCrypt
  has_many :characters

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(password)
    @password = Password.create(password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    return true if user && (user.password == password)
    false
  end
end
