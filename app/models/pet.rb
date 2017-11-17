class Pet < ApplicationRecord
  belongs_to :category
  validates :name, presence: true
  validates :species, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :price, presence: true
  validates :remote_image_url, presence: true
end
