class CreateMedications < ActiveRecord::Migration[7.0]
  def change
    create_table :medications do |t|
      t.string :name
      t.integer :amount
      t.string :measurement
      t.integer :frequency

      t.timestamps
    end
  end
end
