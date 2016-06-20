class Entry < ApplicationRecord
  belongs_to :diagnosis
  before_save :generate_timestamp

  def generate_timestamp
    t = DateTime.now.strftime('%F')
    self.time = "new Date(#{t})"
  end

end
