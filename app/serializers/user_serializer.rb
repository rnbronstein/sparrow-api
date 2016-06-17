class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :diagnoses
  has_many :entries, through: :diagnoses
end
