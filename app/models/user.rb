class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  has_secure_password

def password
  @password ||= BCrypt::Password.new(password_digest)
end

def password=(new_password)
  @password = BCrypt::Password.create(new_password)
  self.password_digest = @password
end

end
