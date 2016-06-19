class Diagnosis < ApplicationRecord
  has_many :entries
  belongs_to :user

  def metadata
    Entry.where(diagnosis: self).map do |entry|
      {label: self.diagnosis, time: entry.time, value: entry.value}
    end
  end

  def self.metadata(user)
    Diagnosis.where(user: user).each do |diagnosis|
      diagnosis.metadata
    end
  end

end
