class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :posts

  validates :name, presence: true, length: { minimum: 3, maximum: 100 }

  VALID_EMAIL_REGEX = /\A[a-z0-9\+\-_\.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: { case_sensitive: false },
            length: {maximum: 105}, format: { with: VALID_EMAIL_REGEX }

end
