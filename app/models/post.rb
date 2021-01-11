class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 10, maximum: 150}
  validates :text, presence: true, length: {minimum: 10, maximum: 2000}
end
