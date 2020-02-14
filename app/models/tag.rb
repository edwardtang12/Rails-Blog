class Tag < ApplicationRecord
  has_many :tagged_posts
  has_many :posts, through: :tagged_posts

  validates :name, presence: true, length: {
    maximum: 100,
    message: 'tag name must be 100 characters or less'
  }
end
