class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  has_many :diagnoses
  has_many :entries, through: :diagnoses
end
