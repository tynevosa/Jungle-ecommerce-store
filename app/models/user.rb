class User < ApplicationRecord

  has_secure_password

  validates :name, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: true


end
