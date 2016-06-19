class User < ApplicationRecord
  has_many :diagnoses
  has_many :entries, through: :diagnoses
  has_secure_password
  validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }

end
