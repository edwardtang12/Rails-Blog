class Category < ApplicationRecord
  has_many :posts

  validates :name, presence: true, uniqueness: true, length: {
    maximum: 100,
    message: 'category name must be 100 characters or less'
  }

end
