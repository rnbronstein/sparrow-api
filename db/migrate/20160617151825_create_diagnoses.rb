class CreateDiagnoses < ActiveRecord::Migration[5.0]
  def change
    create_table :diagnoses do |t|
      t.string :diagnosis
      t.integer :user_id
    end
  end
end
