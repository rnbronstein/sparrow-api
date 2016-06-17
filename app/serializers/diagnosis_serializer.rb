class DiagnosisSerializer < ActiveModel::Serializers
  attributes :id, :diagnosis, :user_id
  belongs_to :user
  has_many :entries
end
