class Category < ApplicationRecord
  has_many :pets, dependent: :destroy
  validates :name, presence: true
end
