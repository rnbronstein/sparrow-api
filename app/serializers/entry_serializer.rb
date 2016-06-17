class EntrySerializer < ActiveModel::Serializer
  attributes :id, :value, :diagnosis_id, :time
  belongs_to :diagnosis
end
