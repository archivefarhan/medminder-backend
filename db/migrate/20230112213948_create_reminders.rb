class CreateReminders < ActiveRecord::Migration[7.0]
  def change
    create_table :reminders do |t|
      t.string :date
      t.integer :time
      t.integer :frequency

      t.timestamps
    end
  end
end
