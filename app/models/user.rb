class User < ApplicationRecord
  # validates :user_name, presence: true, uniqueness: true
  #
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #
  # validates :email, presence: true, length: { maximum: 255 },
  #                 format: { with: VALID_EMAIL_REGEX },
  #                 uniqueness: { case_sensitive: false }
  before_save { self.email = email.downcase }
  before_save :create_remember_token
  validates :user_name,  presence: true, length: { maximum: 50 }
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false }
  validates :age, numericality: { greater_than_or_equal_to: 21 }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :drinks
  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

end
