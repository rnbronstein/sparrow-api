class DiagnosisSerializer < ActiveModel::Serializer
  attributes :id, :diagnosis, :user_id
  belongs_to :user
  has_many :entries
end
