class Diagnosis < ApplicationRecord
  has_many :entries
  belongs_to :user


  def self.metadata(user)
    binding.pry
    Diagnosis.where(user: user).map do |diagnosis|
      diagnosis.metadata
    end
  end

  private
  def metadata
    Entry.where(diagnosis: self).map do |entry|
      binding.pry
      {label: self.diagnosis, time: entry.time, value: entry.value}
    end
  end
end
