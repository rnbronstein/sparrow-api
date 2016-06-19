class User < ApplicationRecord
  has_many :diagnoses
  has_many :entries, through: :diagnoses
  has_secure_password
end
