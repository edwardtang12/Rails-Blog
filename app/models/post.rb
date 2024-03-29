class Post < ApplicationRecord
  has_many :comments
  has_many :tagged_posts
  has_many :tags, through: :tagged_posts
  belongs_to :category
  belongs_to :user

  validates :title, presence: true, length: {
    maximum: 300,
    message: 'title must be 300 characters or less'
  }
  validates :content, presence: true
end
