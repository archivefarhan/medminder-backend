class AddDirectionsToMedication < ActiveRecord::Migration[7.0]
  def change
    add_column :medications, :directions, :text
  end
end
