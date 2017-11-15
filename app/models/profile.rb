class Profile < ApplicationRecord

  validates :full_name, presence: true
  validates :tel_nr, presence: true
  validates :street, presence: true
  validates :house_nr, presence: true

  def full_name_user
    "#{full_name}"
  end
end
