class Entry < ApplicationRecord
  belongs_to :diagnosis
  before_save :generate_timestamp

  def generate_timestamp
    time = DateTime.now
    self.time = time.strftime('%FT%T%')
  end

end
