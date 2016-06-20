class Diagnosis < ApplicationRecord
  has_many :entries
  belongs_to :user


  def self.metadata(user)
    Diagnosis.where(user: user).map do |diagnosis|
      diagnosis.metadata
    end
  end

  def metadata
    Entry.where(diagnosis: self).map do |entry|
      {label: self.diagnosis, time: entry.time, value: entry.value}
    end
  end
end
