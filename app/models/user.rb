class User < ApplicationRecord

  has_secure_password

  before_validation :strip_whitespace
  before_save { email.downcase! }

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :password, confirmation: true, length: { minimum: 8 }
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  def self.authenticate_with_credentials(email, password)
    if user = User.find_by(email: email)
      if user.authenticate(password)
        return user
      else
        return nil
      end
    end
  end

  def strip_whitespace
    self.email = self.email.strip unless self.email.nil?
  end

  def downcase_fields
    self.email.downcase!
  end

end
