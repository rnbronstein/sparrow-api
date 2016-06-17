class EntrySerializer < ActiveModel::Serializers
  attributes :id, :value, :diagnosis_id, :created_at
  belongs_to :diagnosis
end
