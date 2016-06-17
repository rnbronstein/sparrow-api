class CreateEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :entries do |t|
      t.integer :value
      t.integer :diagnosis_id
      t.created_at.strftime("%Y%m%dT%H%M%S")
    end
  end
end
