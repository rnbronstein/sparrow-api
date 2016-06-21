class Entry < ApplicationRecord
  belongs_to :diagnosis
  before_create :generate_timestamp

  def generate_timestamp
    time = DateTime.now
    self.time = time.strftime('%FT%T%')
  end

  def self.all_entries_for_user(user)
    diagnoses = Diagnosis.where(user: user)
    entry_records = []
    diagnoses.each do |diagnosis|
      diagnosis.entries.each do |entry|
        entry_records << entry
      end
    end
    entry_records
  end

end
