class Post < ApplicationRecord
  has_many :comments
  has_many :tags, through: :tagged_posts
  belongs_to :category
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
end
