class UserSerializer < ActiveModel::Serializers
  attributes :id, :name
  has_many :diagnoses
  has_many :entries, through: :diagnoses
end
