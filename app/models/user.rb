class User < ApplicationRecord
  has_one :profile

  def has_profile?
    profile.present? && profile.persisted?
  end

  def full_name_user
    profile.full_name_user
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
